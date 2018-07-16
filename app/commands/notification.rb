class Notification < Command
  MESSAGE_PLACEHOLDER = "MESSAGE"
  TEMPLATE = "#{KmScriptService::TEMPLATE_PATH}/notification.xml"

  def initialize(message = "")
    @template = File.read(TEMPLATE)
    @message = message
  end

  def execute
    script = @template.gsub(MESSAGE_PLACEHOLDER, @message)
    KmScriptService.run(script)
  end
end
