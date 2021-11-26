class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.string :works_name
      t.string :worls_desc
      t.string :location
      t.integer :type_works
      t.string :acount_woks
      t.date :start_date_works
      t.date :end_date_works
      t.references :employees, null: false, foreign_key: true

      t.timestamps
    end
  end
end
