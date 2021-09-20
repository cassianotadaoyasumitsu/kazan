class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|

      t.string :name
      t.string :amount
      t.date :request_date
      t.text :request_reason
      t.string :status

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
