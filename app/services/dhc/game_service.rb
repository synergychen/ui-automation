module DHC
  class GameService
    def initialize(duration = 0)
      @auto_command = AutomationCommand.new
    end

    def run
      commands.each do |cmd|
        @auto_command.add_command(cmd)
      end

      @auto_command.execute
    end

    private

    def commands
      []
    end
  end
end
