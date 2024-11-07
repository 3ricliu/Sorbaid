class MemoryAidNotepad
  def initialize
    @memory_aids = []
  end

  def add_aid(aid)
    memory_aids << aid
  end

  def list_all
    memory_aids
  end

  def filter_by_priority(priority)
    raise ArgumentError, "Invalid priority" unless Priority::VALUES.include?(priority)

    memory_aids.select { |aid| aid.priority == priority }
  end

  def print_all
    list_all.each do |aid|
      puts "Title: #{aid.title}"
      puts "Description: #{aid.description}"
      puts "Priority: #{aid.priority}"
      puts "Due Date: #{aid.due_date}"
    end
  end

  private

  attr_accessor :memory_aids
end