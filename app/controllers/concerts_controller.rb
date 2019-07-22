class ConcertsController < ApplicationController

  before_action :find_concert, only: [ :show, :edit, :update, :destroy]

  def index
    @concerts = Concert.all
  end

  def show
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.create!(concert_params)
    respond_to do |format|
      if @concert.save
        format.html { redirect_to @concert, notice: 'Concert was successfully created.' }
        format.json { render :show, status: :created, location: @concert }
      else
        format.html { render :new , notice: 'Wooops something went wrong'}
        format.json { render json: @concert.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @concert.update(concert_params)
      redirect_to @concert, notice: "Concert was successfully updated"
    else
      render :edit, alert: "Woops something went wrong"
    end
  end

  def destroy
    @concert.destroy!
    redirect_to concerts_path, notice: "Concert was successfully destroyed"
  end

  private

  def concert_params
    params.require(:concert).permit(:title, :content , :city, :venue, :date, {attachments: []}, :tour_id)
  end

  def find_concert 
    @concert = Concert.find(params[:id])
  end
end
