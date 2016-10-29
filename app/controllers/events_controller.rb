class EventsController < ApplicationController
  before_action :current_user_must_be_event_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_event_user
    event = Event.find(params[:id])

    unless current_user == event.organizer
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.organizer_id = params[:organizer_id]

    if @event.save
      redirect_to "/events", :notice => "Event created successfully."
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    @event.organizer_id = params[:organizer_id]

    if @event.save
      redirect_to "/events", :notice => "Event updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    redirect_to "/events", :notice => "Event deleted."
  end
end
