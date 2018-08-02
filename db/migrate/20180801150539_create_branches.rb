class CreateBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :branches do |t|
      t.integer :restaurant_id, :foreign_key => true
      t.integer :city_id, :foreign_key => true
      t.string :area, :limit => 50
      t.string :sub_area, :limit => 50
      t.timestamps
    end
    add_index('branches', 'city_id')
    add_index('branches', 'restaurant_id')
  end
end
