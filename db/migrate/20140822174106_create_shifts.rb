class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :organization_id

      t.timestamps
    end
  end
end
