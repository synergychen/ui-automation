class KmScriptService
  APP_NAME      = "Keyboard Maestro Engine"
  TEMPLATE_PATH = "app/data/templates"
  IMAGE_PATH    = "app/data/images"

  def self.run(script)
    AppleScriptService.run(APP_NAME, script)
  end
end
