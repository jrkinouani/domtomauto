class Reservation < ApplicationRecord
  belongs_to :car
	validates :at_start, :at_end, :pay, :car_id, presence: true
end
