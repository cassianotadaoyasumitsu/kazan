class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :owner
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
