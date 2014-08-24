class CreateEmployeePositions < ActiveRecord::Migration
  def change
    create_table :employee_positions do |t|
      t.integer :employee_id
      t.integer :position_id
      t.integer :organization_id

      t.timestamps
    end
  end
end
