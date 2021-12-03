class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees, primary_key: 'id' do |t|
      t.bigint :employess_celphone
      t.bigint :nss
      t.string :category
      t.string :active
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
