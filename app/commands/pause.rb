class Pause < Command
  def initialize(time = 1)
    @time = time
  end

  def execute
    sleep @time
  end
end
