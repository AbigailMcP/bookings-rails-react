# Encapsulate the concept of a booking. Bookings are made for a particular
# Space and must have a start date, end date and a description.
class Booking < ApplicationRecord
  belongs_to :space

  validates_presence_of :start_date, :end_date, :description

  def serialize
    {
      id: id,
      description: description,
      start_date: start_date.strftime('%d-%m-%Y'),
      end_date: end_date.strftime('%d-%m-%Y'),
      space_id: space_id
    }
  end
end
