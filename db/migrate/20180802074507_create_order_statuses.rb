class CreateOrderStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :order_statuses do |t|
      t.string :name, :limit => 30
      t.string :description
      
      t.timestamps
    end
  end
end
