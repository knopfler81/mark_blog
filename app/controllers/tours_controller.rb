class ToursController < ApplicationController

	before_action :find_tour, only: [:show, :edit, :update, :destroy]
  def index
    @tours = Tour.order('created_at DESC').all
  end

  def show
    @tour = Tour.find(params[:id])
  end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.create!(tour_params)
    respond_to do |format|
      if @tour.save
        format.html { redirect_to tours_path, notice: 'Tour was successfully created.' }
        format.json { render :show, status: :created, location: @tour }
      else
        format.html { render :new , notice: 'Wooops something went wrong'}
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end


  def edit
  end

  def update
    if @tour.update(tour_params)
      redirect_to @tour, notice: "Tour was successfully updated"
    else
      render :edit, alert: "Woops something went wrong"
    end
  end

  def destroy
    @tour.destroy!
    redirect_to tours_path, notice: "Tour was successfully destroyed"
  end

  private

  def tour_params
    params.require(:tour).permit(:title, :year, :cover_tour)
  end

  def find_tour
  	@tour = Tour.find(params[:id])
  end
end
