class ArtistsController < ApplicationController
  def index
    render :index
  end

  def show
    binding.pry
  end

  def artist
    @artist ||= Artist.find_by_id(artist_id)
  end

  protected
  def artist_id
    params.require("id")
  end
end
