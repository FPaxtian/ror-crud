class CreateTools < ActiveRecord::Migration[6.1]
  def change
    create_table :tools do |t|
      t.string :tools_name
      t.string :tools_models
      t.string :tools_brands
      t.date :date_acquistion
      t.bigint :amount_storage

      t.timestamps
    end
  end
end
