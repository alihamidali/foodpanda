class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :name, :limit => 50
      t.decimal :latitude, :precision => 10, :scale => 10
      t.decimal :longitude, :precision => 10, :scale => 10
      t.timestamps
    end
  end
end
