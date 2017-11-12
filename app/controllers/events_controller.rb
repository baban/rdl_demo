class EventsController < ApplicationController
  def index
    RDL.var_type :@events, 'Array<Event>'
    @events = Event.all
  end

  def show
    RDL.var_type :@event, 'Event'
    @event = Event.find(params[:id])
    RDL.var_type :@event_entry, 'EventEntry'
    @event_entry = @event.event_entries.build
    RDL.var_type :@entry_count, 'Integer'
    @entry_count = @event.event_entries.count
  end
end
