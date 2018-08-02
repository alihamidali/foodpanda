class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, :limit => 30
      t.string :last_name, :limit => 40
      t.string :phone_no, :limit => 20
      t.integer :city_id, foreign_key: true

      t.timestamps
    end
    add_index('users', 'city_id')
  end
end
