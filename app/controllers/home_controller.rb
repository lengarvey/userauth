class HomeController < ApplicationController
  # You need this before filter restrict
  # access to the secret_page action to only
  # people who are logged in.
  before_filter :authenticate_user!, :only => [:secret_page]

  def index
    @users = User.all
  end

  def secret_page
  end
end
