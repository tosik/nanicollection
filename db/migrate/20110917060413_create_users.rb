class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :name
      t.integer :money

      t.timestamps
    end
  end
end
