class ClickImage < Command
  IMAGE_PLACEHOLDER = "IMAGE_DATA"
  TEMPLATE = "#{KmScriptService::TEMPLATE_PATH}/click_image.xml"

  def initialize(file, format = "png")
    @template = File.read(TEMPLATE)
    @image = raw_image("#{KmScriptService::IMAGE_PATH}/#{file}.#{format}")
  end

  def execute
    script = @template.gsub(IMAGE_PLACEHOLDER, @image)
    KmScriptService.run(script)
  end

  private

  def raw_image(file)
    Base64.encode64(File.read(file))
  end
end
