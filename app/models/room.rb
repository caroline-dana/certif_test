class Room < ApplicationRecord
  belongs_to :hotel
  has_many :bookings

  validates :room_number, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :daily_price, presence: true, numericality: { only_integer: true }
end
