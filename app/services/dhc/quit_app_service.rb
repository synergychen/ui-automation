module DHC
  class QuitAppService < ::CompositeService
    def run
      super
      Rails.logger.info("Close app")
    end

    private

    def commands
      [
        Pause.new(2),
        ClickImage.new("restart/home"),
      ]
    end
  end
end
