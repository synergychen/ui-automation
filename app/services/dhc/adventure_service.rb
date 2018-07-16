module DHC
  class AdventureService < ::CompositeService
    def run
      Rails.logger.info("Adventure: start")
      super
      Rails.logger.info("Adventure: end")
    end

    private

    def commands
      [
        Notification.new("Start Adventure"),
        Pause.new(2),
        ClickImage.new("home"),
        Pause.new(2),
        ClickImage.new("game_rating"),
        Pause.new(2),
        ClickImage.new("adventure/adventure_home"),
        Pause.new(2),
        ClickImage.new("adventure/adventure"),
        Pause.new(2),
        ClickImage.new("adventure/normal"),
        Pause.new(2),
        ClickImage.new("adventure/epic"),
        Pause.new(2),
        ClickImage.new("adventure/board_1"),
        Pause.new(2),
        ClickImage.new("adventure/action_7"),
        Pause.new(2),
        ClickImage.new("adventure/battle"),
        Pause.new(2),
        ClickImage.new("adventure/skip"),
        Pause.new(2),
        ClickImage.new("adventure/start_battle"),
        Pause.new(10),
        ClickImage.new("adventure/auto_off"),
        Pause.new(3)
      ]
    end
  end
end
