class ArtworkController < ApplicationController
  def show
    @comment = Comment.new(artwork: artwork)
    render :show
  end

  def artwork
    @artwork ||= Artwork.find_by(slug: artwork_slug)
  end

  protected
  def artwork_slug
    params.require("slug")
  end
end
