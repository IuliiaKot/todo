require_relative 'parse.rb'
require_relative 'task.rb'


class List
  attr_reader :tasks

  def initialize
    @tasks = to_task_obj
  end

  def to_task_obj
    Parse.parse_file('todo.csv')
  end

  def save!
    Parse.write_to_file(@tasks)
  end

  def add(task)
    @tasks << Task.new({description: task, status: 'false'})
    save!
  end

  def delete(task)
    @tasks.delete_at(task.to_i - 1)
    save!
  end

  def complete(task)
    @tasks[task.to_i - 1].status = true
    @tasks[task.to_i - 1].completed_at = Time.now
    save!
  end

  def completed
    @tasks.select {|task| task.status}
  end

  def uncompleted
    @tasks.select {|task| !task.status}
  end

  def tag(task)
    id = task[0].to_i - 1
    @tasks[id].tags.concat.task[1..-1]
    save!
  end

  def outstanding
    uncompleted.sort_by {|task| task.created_at}.reverse
  end

  def filter(tag)
    @tasks.select {|task| task.tags.include?(tag)}
  end

end
