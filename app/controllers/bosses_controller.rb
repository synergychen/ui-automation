class BossesController < ApplicationController
  before_action :set_name, only: [:show]

  def show
    thread = Thread.new do
      if @restart
        DHC::RestartService.new.run
      end
      "DHC::#{@name}Service".constantize.new.run
      DHC::ReplayService.new(@duration).run
      DHC::QuitAppService.new.run
    end
    thread[:group] = "dhc"

    render json: { task: "starting #{@name}(#{@duration})..." }
  end

  def set_name
    @name = params[:name] == "sw" ? "SteelWidow" : "ElderDrake"
  end
end
