class CreateRoleRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :role_relations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
