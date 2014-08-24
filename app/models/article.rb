class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  belongs_to :user
  # before_save :fix_body

  def author
    self.user.name
  end

  def short
    return char_match.captures.join("") if char_match != nil
    self.text
  end

  def long
    self.text.split("\r\n\r\n")
  end

  private

  def fix_body
    self.text
  end
  
  def char_match
     self.text.match(/^(.*{2,})\..*/)
  end

end
