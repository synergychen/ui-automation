class ScriptService
  def perform
    app_name = "Keyboard Maestro Engine"
    script_file = "app/data/templates/find_image.xml"
    template = File.read(script_file)
    script = template.gsub("IMAGE_DATA", raw_image)
    AppleScriptService.run(app_name, script)
  end

  private

  def raw_image
    Base64.encode64(File.read("app/data/images/test.png"))
  end
end
