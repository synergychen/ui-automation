class Screenshot < Command
  def initialize(name = Time.now.strftime("%Y%m%d%H%M%S"))
    @name = name
    @path = "tmp/screenshots"
  end

  def execute
    system "mkdir -p #{@path}"
    img = "#{@path}/#{@name}.png"
    system "screencapture -x #{img}"
    system "sips -Z 1080 #{img}"
  end
end
