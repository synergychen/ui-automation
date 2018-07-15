class ScreenshotService < CompositeService
  def initialize(file_name = nil)
    super()
    @file_name = "current"
  end

  private

  def commands
    [
      Screenshot.new(@file_name)
    ]
  end
end
