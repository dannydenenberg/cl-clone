class DashboardController < ApplicationController
  # make sure user is signed in first
  before_action :authenticate_account!, except: [:show]

  def index
    @account = current_account
    @posts = current_account.posts
  end
end
