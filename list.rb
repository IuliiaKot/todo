require_relative 'parse.rb'
require_relative 'task.rb'


class List
  attr_reader :tasks

  def initialize()
    @tasks = to_task_obj
  end

end
