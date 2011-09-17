class AddRarityToCardItem < ActiveRecord::Migration
  def change
    add_column :items, :rarity, :integer
  end
end
