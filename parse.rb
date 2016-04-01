require 'csv'

module Parse

  def self.parse_file(file_name)

    CSV.foreach(file_name, headers: true, header_converters: :symbol).map do |line|
      Task.new(line)
    end
  end

  def self.write_to_file(lists)
    CSV.open("todo.csv", "wb") do |csv|
      csv << ['description','status','tags','created_at','completed_at']
      lists.each do |line|
        csv << [line.description, line.status, line.tags, line.created_at, line.completed_at]
      end
    end
  end
end
