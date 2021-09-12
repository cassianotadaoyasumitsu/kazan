class AddRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ref, :string

    end
  end
end
