class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @event_entry = @event.event_entries.build
  end

  def create
    redirect_to :events
  end
end
