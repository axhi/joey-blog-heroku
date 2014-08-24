class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  belongs_to :user

  def author
    self.user.name
  end
end
