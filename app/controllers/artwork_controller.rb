class ArtworkController < ApplicationController
  def index
    render :index
  end

  def show
    @artwork = Artwork.find(params[:id])
    @comment = Comment.new(artwork: @artwork)
    render :show
  end
end
