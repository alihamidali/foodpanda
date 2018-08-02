class CreateMenuCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_categories do |t|
      t.string :name, :limit => 50
      t.string :details
      t.string :type
      
      t.timestamps
    end
  end
end
