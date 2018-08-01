class CreatePrivilages < ActiveRecord::Migration[5.2]
  def change
    create_table :privilages do |t|

      t.timestamps
    end
  end
end
