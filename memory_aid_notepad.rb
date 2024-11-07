# typed: true
require 'sorbet-runtime'

class MemoryAidNotepad
  extend T::Sig

  sig { void }
  def initialize
    @memory_aids = T.let([], T::Array[MemoryAid])
  end

  sig { params(aid: MemoryAid).returns(T::Array[MemoryAid]) }
  def add_aid(aid)
    memory_aids << aid
    memory_aids
  end

  sig { returns(T::Array[MemoryAid]) }
  def list_all
    memory_aids
  end

  sig { params(priority: Symbol).returns(T::Array[MemoryAid]) }
  def filter_by_priority(priority)
    raise ArgumentError, "Invalid priority" unless Priority::VALUES.include?(priority)

    memory_aids.select { |aid| aid.priority == priority }
  end

  sig { void}
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