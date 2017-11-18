class Event < ApplicationRecord
  # カラムの情報(Event#id)等が追加される
  extend ActiveRecord::Associations::ClassMethods
  extend ActiveRecord::ModelSchema::ClassMethods

  has_many :event_entries

  type '() -> Integer', typecheck: :later
  def hoge
    10
  end

  type '() -> Event', typecheck: :later
  def self.first_event
    Event.find(1)
  end
end

RDL.nowrap :'ActiveRecord::Core::ClassMethods'
RDL.type_params :'ActiveRecord::Core::ClassMethods', [:t], :all?
RDL.type :'ActiveRecord::Core::ClassMethods', :find, '(Integer) -> Event'
RDL.type :'ActiveRecord::Core::ClassMethods', :find_by, '(Integer) -> Event or Nil'
RDL.type :'ActiveRecord::Core::ClassMethods', :find_by!, '(Integer) -> Event'
RDL.type :'ActiveRecord::Core::ClassMethods', :first, '() -> Event'
