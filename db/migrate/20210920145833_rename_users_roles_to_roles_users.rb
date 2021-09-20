class RenameUsersRolesToRolesUsers < ActiveRecord::Migration[6.0]
  def self.up
    rename_table :users_roles, :roles_users
  end

  def self.down
    rename_table :roles_users, :users_roles
  end
end
