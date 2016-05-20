class StaticPageController < ApplicationController

  def sign_in
    render :sign_in
  end

  def home
    render :home
  end

  def about
    render :about
  end

  def exhibition
    render :exhibition
  end
end
