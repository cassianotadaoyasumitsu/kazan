class DropRoleRelations < ActiveRecord::Migration[6.0]
  def change
    drop_table :role_relations
  end
end
