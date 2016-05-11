class CommentsController < ApplicationController
  def create
    @artwork = Artwork.find_by_id(artwork_id)
    @comment = Comment.create(
      artwork: @artwork,
      text: comment_text
    )
    redirect_to "#{artwork_path}/#{@artwork.id}"
  end

  protected

  def comment_text
    params.require(:comment)["text"]
  end

  def artwork_id
    params.require(:artwork_id)
  end
end
