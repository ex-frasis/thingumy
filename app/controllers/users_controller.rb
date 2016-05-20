class UsersController < ApplicationController
  def create
    @cached_guest_user.update(initials: initials)
    redirect_to "/artists"
  end

  protected
  def initials
    params.require("initials")
  end
end
