class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @events = policy_scope(Event).all
  end

  def show
    authorize @event
  end

  def new
    @event = Event.new(event_params)
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    authorize @event
    # @event.nickname = current_user.nickname
    respond_to do |format|
      if @event.save
        format.html { redirect_to event_url(@event), notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
  end

  def destroy
    authorize @event
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :theme, :price, :photo, :description, :date, :time, :location, :event)
  end
end
