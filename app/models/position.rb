class Position < ActiveRecord::Base
  has_many :employee_positions

  def managers
    return "hey"
  end
end
