notepad = MemoryAidNotepad.new
aid1 = MemoryAid.new(title: "Learn Sorbet", description: "Practice Sorbet basics", priority: :high)
aid2 = MemoryAid.new(title: "Grocery shopping", description: "Buy veggies", priority: :low, due_date: Time.now + 3600)

notepad.add_aid(aid1)
notepad.add_aid(aid2)

puts "All memory aids:"
notepad.list_all.each { |aid| puts aid.title }

puts "High priority aids:"
notepad.filter_by_priority(:high).each { |aid| puts aid.title }