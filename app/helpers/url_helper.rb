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

  def itch_store_url
    "https://audilis.itch.io/love-is-a-game"
  end

  def play_store_url
    "http://play.google.com/store/apps/details?id=com.audilis.loveisagame"
  end

  def app_store_url
    "https://itunes.apple.com/us/app/love-is-a-game-otome/id1120854013?ls=1&mt=8"
  end

  def greenlight_url
    "http://steamcommunity.com/sharedfiles/filedetails/?id=713091278"
  end

  def kickstarter_url
    "https://www.kickstarter.com/projects/audilis/1416961365?token=21287669"
  end
end
