class ArtworkController < ApplicationController
  def index

  end

  def show
    @artwork = Artwork.find(params[:id])
    render :show
  end
end
