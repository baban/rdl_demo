class Event < ApplicationRecord
  has_many :event_entries

  type '() -> Integer', typecheck: :later
  def hoge
    10
  end
end
