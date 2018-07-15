class Stop < Command
  def execute
    Thread.list.select { |t| t != Thread.current && t[:group] }.map(&:terminate)
  end
end
