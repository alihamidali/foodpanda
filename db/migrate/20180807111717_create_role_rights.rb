class CreateRoleRights < ActiveRecord::Migration[5.2]
  def change
    create_table :role_rights do |t|
    	t.integer :role_id, :foreign_key => true
    	t.integer :right_id, :foreign_key => true
    	t.integer :user_id, :foreign_key => true
    	t.string :resource

    	t.timestamps
    end
    add_index('role_rights', 'role_id')
    add_index('role_rights', 'right_id')
    add_index('role_rights', 'user_id')
  end
end
