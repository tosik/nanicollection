class User < ActiveRecord::Base
  has_many :items, :through => :inventories
  has_many :inventories

  def draw_gacha!
    items << Item.first
  end
end
