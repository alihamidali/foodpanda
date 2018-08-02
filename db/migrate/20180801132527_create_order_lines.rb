class CreateOrderLines < ActiveRecord::Migration[5.2]
  def change
    create_table :order_lines do |t|
      t.string :name, :limit => 50
      t.integer :order_id, :foreign_key => true
      t.integer :menu_item_id, :foreign_key => true
      t.integer :quantity
      
      t.timestamps
    end
    add_index('order_lines', 'order_id')
    add_index('order_lines', 'menu_item_id')
  end
end
