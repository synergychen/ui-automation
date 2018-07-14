module DHC
  class ReplayService < GameService
    private

    def commands
      [
        Pause.new(1),
        # rewards
        ClickImage.new("replay/rewards"),
        Pause.new(0.1),
        ClickImage.new("replay/more_rewards"),
        Pause.new(0.1),
        # events
        ClickImage.new("replay/events"),
        Pause.new(0.1),
        # replay
        ClickImage.new("replay/replay"),
        Pause.new(0.1),
        # skip
        ClickImage.new("replay/skip"),
        Pause.new(0.1),
        # spend gems
        ClickImage.new("replay/spend_gems"),
        Pause.new(0.1),
        # level up
        ClickImage.new("replay/level_up"),
        Pause.new(0.1),
        # connection failed
        ClickImage.new("replay/connection_failed"),
        Pause.new(0.1)
      ]
    end
  end
end
