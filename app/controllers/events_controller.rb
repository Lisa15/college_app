class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :update, :show, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def edit

  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice] = "Event was successfully created"
      redirect_to event_path(@event)
    else
      render 'new'
  end
  end

  def update

    if @event.update(event_params)
      flash[:notice] = "Event was sucessfully updated"
      redirect_to event_path(@event)
    else
      render 'edit'
  end
  end

    def show

    end

  def destroy

    @event.destroy
    flash[:notice] = "Event was sucessfully deleted"
    redirect_to events_path
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :description)
    end
end
