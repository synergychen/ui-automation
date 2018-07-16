class ChallengersController < ApplicationController
  def index
    restart = params[:restart]

    thread = Thread.new do
      DHC::StopService.new.run
      if restart
        DHC::RestartService.new.run
      end
      DHC::ChallengerService.new.run
      # DHC::QuitAppService.new.run
    end
    thread[:group] = "dhc"

    render json: { task: "starting challengers..." }
  end
end
