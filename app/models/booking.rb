class Booking < ActiveRecord::Base
  belongs_to :slot
  enum status: [:requested, :confirmed, :cancelled]
  validate :cant_have_multiple_confirmed

  def cant_have_multiple_confirmed
    if confirmed? and not slot.confirmed_booking.nil?
      errors.add(:status, " can't be confirmed")
    end
  end
end
