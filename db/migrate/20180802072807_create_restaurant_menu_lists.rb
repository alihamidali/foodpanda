class CreateRestaurantMenuLists < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_menu_lists do |t|
      t.string :name, :limit => 50
      t.string :details
      t.integer :restaurant_id, :foreign_key => true
      t.integer :category_id, :foreign_key => true

      t.timestamps
    end
    add_index('restaurant_menu_lists', 'restaurant_id')
    add_index('restaurant_menu_lists', 'category_id')
  end
end
