class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name, :limit => 50
      t.integer :country_id, :foreign_key => true
      t.decimal :latitude, :precision => 10, :scale => 10
      t.decimal :longitude, :precision => 10, :scale => 10
      t.timestamps
    end
    add_index('states', 'country_id')
  end
end
