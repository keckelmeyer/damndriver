class Review < ActiveRecord::Base
  #has_many :category, :rating, :state
  before_save :make_uppercase
  validates :state, presence: true, length: { is: 2 }
  VALID_PLATE_REGEX = /([A-Za-z0-9]+)/
  validates :plate, presence: true, length: { in: 1..7}, format: { with: VALID_PLATE_REGEX }
  validates :rating, presence: true
  #belongs_to :user through :plate

  def make_uppercase
    self.plate.upcase!
  end
end
