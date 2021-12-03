class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers, primary_key: 'id' do |t|
      t.string :company
      t.bigint :celphone
      t.string :name_contact
      t.integer :type_providers
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end
