class CalendarsController < ApplicationController

  before_action :find_calendar, only: [ :show, :edit, :update, :destroy]
  before_action :authenticate_user! , only: [ :edit, :destroy, :update, :create]

  def index
    @calendars = Calendar.order('created_at DESC').all
  end

  def show
  end

  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.create!(calendar_params)
    respond_to do |format|
      if @calendar.save
        format.html { redirect_to @calendar, notice: 'Calendar was successfully created.' }
        format.json { render :show, status: :created, location: @calendar }
      else
        format.html { render :new , notice: 'Wooops something went wrong'}
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @video  = Video.new
  end

  def update
    if @calendar.update(calendar_params)
      redirect_to @calendar, notice: "Calendar was successfully updated"
    else
      render :edit, alert: "Woops something went wrong"
    end
  end

  def destroy
    @calendar.destroy!
    redirect_to calendars_path, notice: "Calendar was successfully destroyed"
  end

  private

  def calendar_params
    params.require(:calendar).permit(
    		:year,
    		:link,
        {images: []}, 

      )
  end

  def find_calendar 
    @calendar = Calendar.find(params[:id])
  end
end
