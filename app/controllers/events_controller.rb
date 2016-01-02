class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create

    @event = Event.new(event_params)
    @event.save
    redirect_to events_show(@event)
  end

  private
  def event_params
    params.require(:event).permit(:title, :description)
  end
end