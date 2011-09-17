class GachaController < ApplicationController
  def index
    @drawn_item = Item.where(:id => params[:drawn_item]).first
  end
  def draw
    drawn_item = current_user.draw_gacha!
    redirect_to :controller => :gacha,
      :action => :index,
      :drawn_item => drawn_item
  end
end
