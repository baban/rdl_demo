class Event < ApplicationRecord
  # カラムの情報(Event#id)等が追加される
  extend ActiveRecord::ModelSchema::ClassMethods
  has_many :event_entries

  type '() -> Integer', typecheck: :later
  def hoge
    10
  end

  type '() -> Event', typecheck: :later
  def self.first
    super
  end
end
