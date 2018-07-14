class AdventuresController < ApplicationController
  def start
    duration = (params[:duration] || 3000).to_i

    Thread.new do
      DHC::AdventureService.new.run
      DHC::ReplayService.new(duration).run
    end

    render json: { task: "starting adventures..." }
  end
end
