class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name, :limit => 50
      t.string :cuisine, :limit => 50
      t.string :cover_image
      t.integer :user_id, :foreign_key => true

      t.timestamps
    end
    add_index('restaurants', 'user_id')
  end
end
