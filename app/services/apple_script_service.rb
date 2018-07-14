class AppleScriptService
  class << self
    def run(app_name, script)
      osascript <<-END
        tell application "#{app_name}"
          do script "#{script}"
        end tell
      END
    end

    private

    def osascript(script)
      cmd = script.split(/\n/).map { |line| ['-e', line] }.flatten
      system 'osascript', *cmd
    end
  end
end
