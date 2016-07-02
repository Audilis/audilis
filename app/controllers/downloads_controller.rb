class DownloadsController < ApplicationController
  def index; end

  def show
    case params[:id]
    when /ios/i
      render 'index'
    when /android/i
      redirect_to 'http://play.google.com/store/apps/details?id=com.audilis.loveisagame'
    else
      redirect_to 'https://audilis.itch.io/love-is-a-game'
    end
  end
end
