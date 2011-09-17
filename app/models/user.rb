class User < ActiveRecord::Base
  has_many :items, :through => :inventories
  has_many :inventories

  def draw_gacha!
    item = Item.first
    items << item
    item
  end
end
