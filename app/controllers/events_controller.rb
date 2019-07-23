class EventsController < ApplicationController

  before_action :find_event, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user! , only: [ :edit, :destroy, :update, :create]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create!(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new , notice: 'Wooops something went wrong'}
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @video  = Video.new
  end

  def update
    if @event.update(event_params)
      redirect_to @event, notice: "Event was successfully updated"
    else
      render :edit, alert: "Woops something went wrong"
    end
  end

  def destroy
    @event.destroy!
    redirect_to events_path, notice: "Event was successfully destroyed"
  end

  private

  def event_params
    params.require(:event).permit(
        :title, 
        :date, 
        :venue, 
        :content, 
        {pictures: []}, 
      )
  end

  def find_event 
    @event = Event.find(params[:id])
  end
end
