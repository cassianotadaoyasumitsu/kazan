class AddDefaultValueToStatus < ActiveRecord::Migration[6.0]
  def change
    change_column_default :requests, :status, from: nil, to: "applying"
  end
end
