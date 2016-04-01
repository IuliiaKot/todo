require_relative 'list.rb'
require_relative 'view.rb'

class Controller

  def initialize(args={})
    @view = View.new
    @list = List.new
  end

  def list
    @view.print(@list.tasks)
  end

  def add_task(task)
    @list.add(task)
    @view.print(@list.tasks)
  end

  def delete_task(task)
    @list.delete(task)
    @view.print(@list.tasks)
  end

  def complete_task(task)
    @list.complete(task)
    @view.print(@list.tasks)
  end

  def completed_task
    @view.print(@list.completed)
  end

  def uncompleted_task
    @view.print(@list.uncompleted)
  end

end
