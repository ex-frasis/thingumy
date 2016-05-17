class LikesController < ApplicationController

  def new
    Like.find_or_create_by(
      artwork: artwork,
      user: @cached_guest_user
    )
    redirect_to "#{artwork_path}/#{artwork.id}"
  end

  def artwork
    @artwork ||= Artwork.find_by_id(artwork_id)
  end

  protected
  def artwork_id
    params.permit("artwork_id").require("artwork_id")
  end
end
