class GachaController < ApplicationController
  def draw
    current_user.draw_gacha!
  end
end
