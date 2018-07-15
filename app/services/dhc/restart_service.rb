module DHC
  class RestartService < ::CompositeService
    def run
      Rails.logger.info("Restart DHC: start")
      super
      Rails.logger.info("Restart DHC: end")
    end

    private

    def commands
      [
        Pause.new(2),
        ClickImage.new("restart/switch_app"),
        Pause.new(2),
        ClickImage.new("restart/clear_all"),
        Pause.new(3),
        ClickImage.new("restart/home"),
        Pause.new(2),
        ClickImage.new("restart/dhc"),
        Pause.new(45),
      ]
    end
  end
end
