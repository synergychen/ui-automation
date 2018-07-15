class DhcsController < ApplicationController
  def replay
    duration = (params[:duration] || 3000).to_i

    thread = Thread.new do
      DHC::ReplayService.new(duration).run
    end
    thread[:group] = "dhc"

    render json: { task: "replaying(#{duration})..." }
  end

  def stop
    Stop.new.execute
    render json: { "task": "Terminated all tasks" }
  end
end
