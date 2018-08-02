class CreateRights < ActiveRecord::Migration[5.2]
  def change
    create_table :rights do |t|
      t.string :name, :uniqueness => true
      
      t.timestamps
    end
  end
end
