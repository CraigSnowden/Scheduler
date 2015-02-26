class Slot < ActiveRecord::Base
  belongs_to :room
  has_many :bookings
  has_one :confirmed_booking, -> {where status: Booking.statuses[:confirmed]}, class_name: "Booking"
end
