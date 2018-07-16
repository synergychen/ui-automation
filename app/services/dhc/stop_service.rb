module DHC
  class StopService < ::CompositeService
    def run
      super
      Rails.logger.info("Stop")
    end

    private

    def commands
      [
        Notification.new("Stop all tasks"),
        Stop.new
      ]
    end
  end
end
