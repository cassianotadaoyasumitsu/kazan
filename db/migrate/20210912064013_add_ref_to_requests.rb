class AddRefToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :ref, :string
  end
end
