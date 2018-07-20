module DHC
  class SteelWidowService < ::CompositeService
    private

    def commands
      [
        Pause.new(2),
        Notification.new("Start Steel Widow"),
        ClickImage.new("home"),
        Pause.new(2),
        ClickImage.new("game_rating"),
        Pause.new(2),
        ClickImage.new("adventure/adventure_home"),
        Pause.new(2),
        ClickImage.new("boss/boss_raids"),
        Pause.new(2),
        DragImage.new("boss/golden_bull", -200, 0),
        Pause.new(2),
        DragImage.new("boss/golden_bull", -200, 0),
        Pause.new(2),
        ClickImage.new("boss/steel_widow"),
        Pause.new(2),
        DragImage.new("boss/steel_widow_11", 0, 18),
        Pause.new(3),
        ClickImage.new("boss/steel_widow_10"),
        Pause.new(2),
        ClickImage.new("boss/battle"),
        Pause.new(2),
      ]
    end
  end
end
