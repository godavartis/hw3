class PlacesController < ApplicationController
  def index
    @places = Place.order(:name)
  end

  def show
    @place = Place.find(params[:id])

    @entries = Entry.where(place_id: @place.id)
    @entries = @entries.order(posted_on: :desc)
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new
    @place.name = params[:name]

    if @place.save
      redirect_to("/places")
    else
      render("new")
    end
  end
end