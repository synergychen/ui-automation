class DragImage < Command
  IMAGE_PLACEHOLDER = "IMAGE_DATA"
  X_PLACEHOLDER = "X_POSITION"
  Y_PLACEHOLDER = "Y_POSITION"
  TEMPLATE = "#{KmScriptService::TEMPLATE_PATH}/drag_image.xml"

  def initialize(file, x = 0, y = 0, format = "png")
    @template = File.read(TEMPLATE)
    @image = raw_image("#{KmScriptService::IMAGE_PATH}/#{file}.#{format}")
    @x = x.to_s
    @y = y.to_s
  end

  def execute
    script = @template
      .gsub(IMAGE_PLACEHOLDER, @image)
      .gsub(X_PLACEHOLDER, @x)
      .gsub(Y_PLACEHOLDER, @y)
    KmScriptService.run(script)
  end

  private

  def raw_image(file)
    Base64.encode64(File.read(file))
  end
end
