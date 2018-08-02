class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :ratings
      t.integer :description
      t.integer :restaurant_id, :foreign_key => true
      t.integer :user_id, :foreign_key => true
      t.timestamps
    end
    add_index('ratings', 'restaurant_id')
    add_index('ratings', 'user_id')
  end
end
