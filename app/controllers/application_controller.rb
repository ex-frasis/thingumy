class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :guest_user
  before_action :guest_user

  def guest_user(with_retry = true)
    @cached_guest_user ||= User.find(session[:guest_user_id] ||= create_guest_user.id)
  rescue ActiveRecord::RecordNotFound # if session[:guest_user_id] invalid
    session[:guest_user_id] = nil
    guest_user if with_retry
  ensure
    if @cached_guest_user.nil? || @cached_guest_user.initials.nil?
      redirect_to "/sign_in"
    end
  end

  private

  def create_guest_user
    u = User.create(:email => "guest_#{Time.now.to_i}#{rand(100)}@example.com")
    u.save!(:validate => false)
    session[:guest_user_id] = u.id
    u
  end
end
