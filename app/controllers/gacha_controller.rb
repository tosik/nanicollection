class GachaController < ApplicationController
  def index
  end
  def draw
    current_user.draw_gacha!
    redirect_to :controller => :gacha, :action => :index
  end
end
