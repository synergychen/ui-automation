class Click < Command
  X_PLACEHOLDER = "X_POSITION"
  Y_PLACEHOLDER = "Y_POSITION"
  TEMPLATE = "#{KmScriptService::TEMPLATE_PATH}/click.xml"

  def initialize(x = 0, y = 0)
    @template = File.read(TEMPLATE)
    @x = x.to_s
    @y = y.to_s
  end

  def execute
    script = @template
      .gsub(X_PLACEHOLDER, @x)
      .gsub(Y_PLACEHOLDER, @y)
    KmScriptService.run(script)
  end
end
