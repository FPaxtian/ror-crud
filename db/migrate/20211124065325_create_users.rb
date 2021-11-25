class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :users_name
      t.string :email
      t.string :password
      t.integer :type_users

      t.timestamps
    end
  end
end
