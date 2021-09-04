# frozen_string_literal: true

class DeviseCreateTantoshas < ActiveRecord::Migration[6.0]
  def change
    create_table :tantoshas do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      # Tantoshas
      t.string :name
      t.string :furigana
      t.string :address
      t.string :phone
      t.string :factory
      t.string :role
      t.string :job_exp
      t.string :pay_number
      t.date :started_date
      t.boolean :licence1, default: false
      t.date :healthy_exam
      t.string :drive_licence
      t.date :drive_licence_date
      t.string :document
      t.date :document_date
      t.string :passport
      t.date :passport_date

      t.references :user, null: false, foreign_key: true

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.inet     :current_sign_in_ip
      # t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :tantoshas, :email,                unique: true
    add_index :tantoshas, :reset_password_token, unique: true
    # add_index :tantoshas, :confirmation_token,   unique: true
    # add_index :tantoshas, :unlock_token,         unique: true
  end
end
