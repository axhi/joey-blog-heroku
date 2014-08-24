class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :employee_id
      t.integer :shift_id

      t.timestamps
    end
  end
end
