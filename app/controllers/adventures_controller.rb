class AdventuresController < ApplicationController
  def index
    thread = Thread.new do
      DHC::AdventureService.new.run
      DHC::ReplayService.new(@duration).run
      DHC::QuitAppService.new.run
    end
    thread[:group] = "dhc"

    render json: { task: "starting adventures(#{@duration})..." }
  end
end
