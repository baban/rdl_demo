class Event < ApplicationRecord
  # カラムの情報(Event#id)等が追加される
  extend ActiveRecord::Associations::ClassMethods
  extend ActiveRecord::ModelSchema::ClassMethods

  has_many :event_entries

  type '() -> Integer', typecheck: :later
  def hoge
    10
  end

  type '() -> self', typecheck: :later
  def self.first_event
    Event.first
  end
end
