class ReplaysController < ApplicationController
  def show
    duration = (params[:duration] || 3000).to_i

    Thread.new do
      DHC::ReplayService.new(duration).run
    end

    render json: { task: "replaying..." }
  end
end
