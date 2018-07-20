class ReplaysController < ApplicationController
  def show
    thread = Thread.new do
      DHC::ReplayService.new(@duration).run
    end
    thread[:group] = "dhc"

    render json: { task: "replaying..." }
  end
end
