class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :name, :limit => 50
      t.decimal :price
      t.integer :restaurant_menu_list_id, :foreign_key => true
      t.string :picture

      t.timestamps
    end
    add_index('menu_items', 'restaurant_menu_list_id')
  end
end
