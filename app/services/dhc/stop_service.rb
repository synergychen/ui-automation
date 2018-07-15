module DHC
  class StopService < ::CompositeService
    def run
      super
      Rails.logger.info("Stop")
    end

    private

    def commands
      [
        Stop.new
      ]
    end
  end
end
