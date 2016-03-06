module URLHelper
  def facebook_url
    'https://www.facebook.com/AudilisGames'
  end

  def twitter_url
    'https://twitter.com/audilisofficial'
  end

  def tumblr_url
    'http://blog.audilis.com'
  end

  def google_plus_url
    'https://plus.google.com/b/104673219274360857218/+Audilis'
  end

  def youtube_url
    'https://www.youtube.com/c/Audilis'
  end

  def instagram_url
    'https://www.instagram.com/audilisofficial'
  end

  def tumblr_share_url(url)
    "http://tumblr.com/widgets/share/tool?canonicalUrl=#{u(url)}&posttype=link"
  end

  def facebook_share_url(url)
    """
      javascript:FB.ui({
        method: 'share',
        href: '#{url}',
      }, function(response){});
      void(0);
    """
  end

  def twitter_share_url(url)
    "http://twitter.com/share?url=#{u(url)}"
  end

  def google_share_url(url)
    "https://plus.google.com/share?url=#{u(url)}"
  end
end
