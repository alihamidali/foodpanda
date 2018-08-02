class CreatePrivilages < ActiveRecord::Migration[5.2]
  def change
    create_table :privilages do |t|
      t.integer :role_id, :foreign_key => true
      t.integer :right_id, :foreign_key => true
      t.integer :user_id, :foreign_key => true
      t.timestamps
    end
    add_index('privilages', 'role_id')
    add_index('privilages', 'right_id')
    add_index('privilages', 'user_id')
  end
end
