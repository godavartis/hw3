class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
  end

  def create
    entry = Entry.new(
      place_id: params[:place_id],
      title: params[:title],
      description: params[:description],
      posted_on: params[:posted_on]
    )

    if entry.save
      redirect_to("/places/#{entry.place_id}")
    else
      redirect_to("/entries/new?place_id=#{entry.place_id}")
    end
  end
end