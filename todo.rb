require_relative 'controller.rb'


# input = ARGV
# if (input.first.include?(":") && input.length == 1)
#   params = {:command => input.first.split(":").first.to_sym, :second => input.first.split(":").last}
# else
#   method = input[0].include?(":") ? input[0].split(":").last.to_sym : input[0].to_sym
#   params = {:command => method, :second => input[1..-1]}
# end
# {:command => :list, second: ""}
# {:command => :filter, second: ""}
# {:command => :add, :second: "new_task"}
# {:command => :delete, :second: 1}
# {:command => :complete, :second: 2}
# {:command => :tag, :second: [3, "home", "personal"]}

todo = Controller.new

  case ARGV[0]
  when 'list'
    todo.list
  when 'add'
    todo.add_task(ARGV[1..-1].join(' '))
  when 'delete'
    todo.delete_task(ARGV[1])
  when 'complete'
    todo.complete_task(ARGV[1])
  when 'completed'
    todo.completed_task
  when 'uncompleted'
    todo.uncompleted_task
  end


# todo = Controller.new(params)
# todo.list
