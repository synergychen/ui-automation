class AdventuresController < ApplicationController
  def index
    duration = (params[:duration] || 3000).to_i

    thread = Thread.new do
      DHC::AdventureService.new.run
      DHC::ReplayService.new(duration).run
    end
    thread[:group] = "dhc"

    render json: { task: "starting adventures(#{duration})..." }
  end
end
