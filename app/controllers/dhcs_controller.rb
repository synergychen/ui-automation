class DhcsController < ApplicationController
  def replay
    duration = (params[:duration] || 3000).to_i

    thread = Thread.new do
      DHC::StopService.new.run
      DHC::ReplayService.new(duration).run
    end
    thread[:group] = "dhc"

    render json: { task: "replaying(#{duration})..." }
  end

  def stop
    DHC::StopService.new.run
    render json: { "task": "Terminated all tasks." }
  end

  def screenshot
    file_name = "current"
    ScreenshotService.new(file_name).run
    send_file Rails.root.join("tmp/screenshots", "#{file_name}.png"), type: "image/png", disposition: "inline"
  end
end
