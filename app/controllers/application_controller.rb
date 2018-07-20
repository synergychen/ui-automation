class ApplicationController < ActionController::API
  before_action :stop_services
  before_action :set_restart
  before_action :set_duration

  def stop_services
    DHC::StopService.new.run
  end

  def set_restart
    @restart = params[:restart]
  end

  def set_duration
    @duration = (params[:duration] || 7200).to_i
  end
end
