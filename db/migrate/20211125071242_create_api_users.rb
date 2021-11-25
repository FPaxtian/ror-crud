class CreateApiUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :api_users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :user_type

      t.timestamps
    end
  end
end
