class CommentsController < ApplicationController
  def create
    binding.remote_pry
    puts params
  end
end
