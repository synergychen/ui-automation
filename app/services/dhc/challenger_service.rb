module DHC
  class ChallengerService < ::CompositeService
    def run
      Rails.logger.info("Challengers: start")
      15.times do
        super
      end
      Rails.logger.info("Challengers: end")
    end

    private

    def commands
      [
        Pause.new(2),
        Notification.new("Start Challengers"),
        ClickImage.new("home"),
        Pause.new(2),
        ClickImage.new("game_rating"),
        Pause.new(2),
        ClickImage.new("battlefield/battlefield"),
        Pause.new(2),
        ClickImage.new("battlefield/arena"),
        Pause.new(2),
        ClickImage.new("battlefield/challengers"),
        Pause.new(2),
        ClickImage.new("battlefield/challengers_1_xylia"),
        Pause.new(0.1),
        ClickImage.new("battlefield/challengers_2_wink"),
        Pause.new(0.1),
        ClickImage.new("battlefield/challengers_3_rogrim"),
        Pause.new(0.1),
        ClickImage.new("battlefield/challengers_4_viro"),
        Pause.new(0.1),
        ClickImage.new("battlefield/challengers_5_granya"),
        Pause.new(0.1),
        DragImage.new("battlefield/challengers_icon", 0, -100),
        Pause.new(3),
        ClickImage.new("battlefield/challengers_6_gabion"),
        Pause.new(0.1),
        ClickImage.new("battlefield/challengers_7_malice"),
        Pause.new(0.1),
        ClickImage.new("battlefield/challengers_8_stargoth"),
        Pause.new(0.1),
        ClickImage.new("battlefield/challengers_9_calepheneus"),
        Pause.new(3),
        ClickImage.new("battlefield/battle"),
        Pause.new(10),
        ClickImage.new("battlefield/auto_off"),
        Pause.new(10),
        ClickImage.new("battlefield/auto_off"),
        Pause.new(10),
        ClickImage.new("battlefield/rewards"),
        Pause.new(5),
        ClickImage.new("battlefield/watch_ads"),
        Pause.new(45),
        Keystroke.new(53),
        Pause.new(10),
        Keystroke.new(53),
      ]
    end
  end
end
