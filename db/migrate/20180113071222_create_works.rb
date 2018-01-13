class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.references :working_day
      t.integer :category
      t.string :order_code
      t.string :operation_code
      t.integer :time, null: false

      t.timestamps null: false
    end
  end
end
