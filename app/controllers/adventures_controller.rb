class AdventuresController < ApplicationController
  def start
    Thread.new do
      DHC::AdventureService.new.run
    end

    render json: { task: "starting adventures..." }
  end
end
