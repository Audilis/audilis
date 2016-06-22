class HomeController < ApplicationController
  def show
    #@game = Game.find_by(uid: 'liag')
    @game = Game.new
  end
end
