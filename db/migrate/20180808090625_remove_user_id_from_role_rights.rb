class RemoveUserIdFromRoleRights < ActiveRecord::Migration[5.2]
  def change
  	remove_column :role_rights, :user_id
  end
end
