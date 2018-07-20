class DhcsController < ApplicationController
  skip_before_action :stop_services, only: [:screenshot]

  def replay
    thread = Thread.new do
      DHC::ReplayService.new(@duration).run
    end
    thread[:group] = "dhc"

    render json: { task: "replaying(#{@duration})..." }
  end

  def stop
    render json: { "task": "Terminated all tasks." }
  end

  def screenshot
    file_name = "current"
    ScreenshotService.new(file_name).run
    send_file Rails.root.join("tmp/screenshots", "#{file_name}.png"), type: "image/png", disposition: "inline"
  end
end
