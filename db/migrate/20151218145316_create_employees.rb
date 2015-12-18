class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :emp_id
      t.string :department

      t.timestamps null: false
    end
  end
end
