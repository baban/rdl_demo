class EventEntriesController < ApplicationController
  def create
    Event.find(params[:event_id]).event_entries.create(user: current_user)
    redirect_to :events
  end
end
