class StaticPageController < ApplicationController
  def sign_in
    render :sign_in
  end

  def map
    render :map
  end

  def home
    recent_comments
    top_artists
    render :home
  end

  def recent_comments
    @recent_comments = Comment.order(created_at: :desc).limit(10)
  end

  def top_artists
    @top_artists = Like.group(:artwork_id).count.entries.sort{|x,y| y[1] <=> x[1]}[0..5].map{|id| Artist.find_by_id(id[0])}.uniq.compact
  end

  def about
    render :about
  end

  def exhibition
    render :exhibition
  end
end
