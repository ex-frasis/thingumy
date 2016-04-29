class ArtworkController < ApplicationController
  def index
    render :index
  end

  def show
    @artwork = Artwork.find(params[:id])
    render :show
  end
end
