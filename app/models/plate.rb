class Plate < ActiveRecord::Base
  before_save :make_uppercase
  validates :state_id, presence: true
  VALID_PLATE_REGEX = /([A-Za-z0-9]+)/
  validates :plate, presence: true, length: { in: 1..7}, format: { with: VALID_PLATE_REGEX }
  belongs_to :rating
  belongs_to :user
end
