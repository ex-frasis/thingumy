class ArtworkController < ApplicationController
  def show
    @comment = Comment.new(artwork: artwork)
    render :show
  end

  def artwork
    @artwork ||= Artwork.find_by_id(artwork_id)
  end

  protected
  def artwork_id
    params.require("id")
  end
end
