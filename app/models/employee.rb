class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :employee_positions
  has_many :positions, through: :employee_positions
  belongs_to :organization
  has_many :schedules
  has_many :shifts, through: :schedules
  has_many :managers, through: :positions
  # has_many :managers, through: :organization

  # def manager
    # self.positions.where(name: "Manager") != []
  # end

end
