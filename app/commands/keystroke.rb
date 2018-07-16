class Keystroke < Command
  KEY_CODE_PLACEHOLDER = "KEY_CODE"
  TEMPLATE = "#{KmScriptService::TEMPLATE_PATH}/keystroke.xml"

  # keycode 53: ESC
  def initialize(key_code = 53)
    @template = File.read(TEMPLATE)
    @key_code = key_code.to_s
  end

  def execute
    script = @template.gsub(KEY_CODE_PLACEHOLDER, @key_code)
    KmScriptService.run(script)
  end
end
