class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.references :item
      t.references :user

      t.timestamps
    end
    add_index :inventories, :user_id
  end
end
