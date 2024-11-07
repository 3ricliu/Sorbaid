# typed: true
require 'sorbet-runtime'

class MemoryAid < T::Struct
  const :title, String
  const :description, String
  const :priority, T.nilable(Symbol)
  const :due_date, T.nilable(Time)
end