class ChallengersController < ApplicationController
  def index
    thread = Thread.new do
      if @restart
        DHC::RestartService.new.run
      end
      DHC::ChallengerService.new.run
    end
    thread[:group] = "dhc"

    render json: { task: "starting challengers..." }
  end
end
