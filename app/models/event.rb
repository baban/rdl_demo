class Event < ApplicationRecord
  has_many :event_entries

  type '() -> Integer', typecheck: :later
  def hoge
    10
  end

  type '() -> Event', typecheck: :later
  def first_event
    Event.first
  end
end
