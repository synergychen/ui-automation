class BossesController < ApplicationController
  def show
    duration = (params[:duration] || 3000).to_i
    name = params[:name] == "sw" ? "SteelWidow" : "ElderDrake"

    thread = Thread.new do
      "DHC::#{name}Service".constantize.new.run
      DHC::ReplayService.new(duration).run
    end
    thread[:group] = "dhc"

    render json: { task: "starting #{name}(#{duration})..." }
  end
end
