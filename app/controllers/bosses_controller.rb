class BossesController < ApplicationController
  def show
    duration = (params[:duration] || 3000).to_i
    name = params[:name] == "sw" ? "SteelWidow" : "ElderDrake"
    restart = params[:restart]

    thread = Thread.new do
      DHC::StopService.new.run
      if restart
        DHC::RestartService.new.run
      end
      "DHC::#{name}Service".constantize.new.run
      DHC::ReplayService.new(duration).run
    end
    thread[:group] = "dhc"

    render json: { task: "starting #{name}(#{duration})..." }
  end
end
