class User < ActiveRecord::Base
  has_many :items, :through => :inventories
  has_many :inventories

  def draw_gacha!
    item = Item.order('RANDOM()').first
    items << item
    item
  end
end
