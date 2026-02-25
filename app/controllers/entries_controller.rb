class EntriesController < ApplicationController
  def new
    @place = Place.find(params[:place_id])
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.place_id = params[:place_id]
    @entry.title = params[:title]
    @entry.description = params[:description]
    @entry.posted_on = params[:posted_on]

    if @entry.save
      redirect_to("/places/#{@entry.place_id}")
    else
      render("entries/new")
    end
  end
end