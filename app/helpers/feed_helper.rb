module FeedHelper
  def render_profile_picture(feed)
    feed.user.profile_picture if feed.caption
  end

  def render_username(feed)
    feed.caption.from.username if feed.caption
  end

  def render_text(feed)
    feed.caption.text if feed.caption
  end

  def render_search_profile_picture(feed)
    feed.user.profile_picture if feed.user
  end

  def render_search_username(feed)
    feed.user.username if feed.user
  end

  def render_search_text(feed)
    feed.user.text if feed.user
  end
end
