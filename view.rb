class View

  def print(tasks)
    tasks.each_with_index do |task, idx|
      puts "#{idx + 1}. #{task.status ? '[X]' : [ ]} #{task.description} TAGS: #{task.tags}"
    end
  end
end
