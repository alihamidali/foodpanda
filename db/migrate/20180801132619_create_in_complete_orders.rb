class CreateInCompleteOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :in_complete_orders do |t|

      t.timestamps
    end
  end
end
