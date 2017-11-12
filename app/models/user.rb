class User < ApplicationRecord
  has_many :event_entries
end
