class HomeController < ApplicationController
  def show
    @game = Game.find_by(uid: 'liag')
  end
end
