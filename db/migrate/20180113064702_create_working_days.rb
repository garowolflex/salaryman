class CreateWorkingDays < ActiveRecord::Migration[5.1]
  def change
    create_table :working_days do |t|
      t.date :date, null: false, index: true
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :rest_time
      t.integer :deduction_time
      t.string :description
      t.timestamps null: false
    end
  end
end
