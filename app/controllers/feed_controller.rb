class FeedController < ApplicationController
  before_action :authorize!

  def index
    @feed = current_user.client.user_media_feed({count:100}).paginate(page: params[:page], per_page: 20)
  end

  def search
    if params[:search] == ""
      redirect_to feed_path
    else
      tags = current_user.client.tag_search(params[:search])
      if tags[0].nil?
        redirect_to feed_path
      else
        @feed = current_user.client.tag_recent_media(tags[0].name)
      end
    end
  end

  def user_search
    if params[:search] == ""
      redirect_to feed_path
    else
      users = current_user.client.user_search(params[:search])
      if users[0].nil?
      redirect_to feed_path
      else
        @feed = users
      end
    end
  end
end
