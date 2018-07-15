class KmScriptService
  APP_NAME      = "Keyboard Maestro Engine"
  TEMPLATE_PATH = "app/templates"
  IMAGE_PATH    = "app/assets/images"

  def self.run(script)
    AppleScriptService.run(APP_NAME, script)
  end
end
