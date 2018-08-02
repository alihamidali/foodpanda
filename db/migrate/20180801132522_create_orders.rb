class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name, :limit => 50
      t.integer :user_id, :foreign_key => true
      t.integer :restaurant_id, :foreign_key => true
      t.integer :city_id, :foreign_key => true
      t.string :status_id, :foreign_key => true
      t.timestamps
    end
    add_index('orders', 'user_id')
    add_index('orders', 'restaurant_id')
    add_index('orders', 'city_id')
    add_index('orders', 'status_id')
  end
end
