module DHC
  class ElderDrakeService < ::CompositeService
    private

    def commands
      [
        Pause.new(2),
        Notification.new("Start Elder Drake"),
        ClickImage.new("home"),
        Pause.new(2),
        ClickImage.new("game_rating"),
        Pause.new(2),
        ClickImage.new("adventure/adventure_home"),
        Pause.new(2),
        ClickImage.new("boss/boss_raids"),
        Pause.new(2),
        ClickImage.new("boss/elder_drake"),
        Pause.new(2),
        DragImage.new("boss/elder_drake_11", 0, 18),
        Pause.new(2),
        ClickImage.new("boss/elder_drake_10"),
        Pause.new(3),
        ClickImage.new("boss/battle"),
        Pause.new(2),
      ]
    end
  end
end
