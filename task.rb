class String
  def to_b
    self == 'true'
  end
end

class Task
  attr_accessor :status, :created_at, :completed_at
  attr_reader :tags, :description

  def initialize(args={})
    @description = args[:description]
    @status = args[:status].to_b || false
    @tags = args[:tags] || []
    @created_at = args[:created_at] || Time.now
    @completed_at = args[:completed_at] || ""
  end
end
