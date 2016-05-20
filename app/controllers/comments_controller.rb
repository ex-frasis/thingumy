class CommentsController < ApplicationController
  def create
    if comment_text.strip != ""
      @comment = Comment.create(
        artwork: artwork,
        text: comment_text,
        user: @cached_guest_user
      )
    end
    redirect_to "/artwork/#{artwork.slug}"
  end

  def artwork
    @artwork ||= Artwork.find_by_id(artwork_id)
  end

  protected

  def comment_text
    params.require(:comment)["text"]
  end

  def artwork_id
    params.require(:artwork_id)
  end
end
