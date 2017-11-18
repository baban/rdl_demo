class EventsController < ApplicationController
  def index
    RDL.var_type :@events, 'Array<Event>', typecheck: :later
    @events = Event.all
  end

  def show
    RDL.var_type :@event, 'Event', typecheck: :later
    @event = Event.find(params[:id])
    RDL.var_type :@event_entry, 'EventEntry', typecheck: :later
    @event_entry = @event.event_entries.build
    RDL.var_type :@entry_count, 'Integer', typecheck: :later
    @entry_count = @event.event_entries.count
  end
end
