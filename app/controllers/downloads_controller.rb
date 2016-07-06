class DownloadsController < ApplicationController
  def index; end

  def show
    case params[:id]
    when /ios/i
      redirect_to app_store_url
    when /android/i
      redirect_to play_store_url
    when /steam/i
      redirect_to greenlight_url
    else
      redirect_to itch_store_url
    end
  end
end
