class Organization < ActiveRecord::Base
  has_many :employees
  has_many :shifts
  has_many :employee_positions
  has_many :positions, through: :employee_positions

  def managers
    self.positions.where(name: "Manager")
  end

end
