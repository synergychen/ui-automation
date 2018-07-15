class ReplaysController < ApplicationController
  def show
    duration = (params[:duration] || 3000).to_i

    thread = Thread.new do
      DHC::ReplayService.new(duration).run
    end
    thread[:group] = "dhc"

    render json: { task: "replaying..." }
  end
end
