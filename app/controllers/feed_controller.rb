class FeedController < ApplicationController
  before_action :authorize!

  def index
    @feed = current_user.client.user_media_feed({count:100}).paginate(page: params[:page], per_page: 20)
  end

  def show
  end

  def search

  end
end
