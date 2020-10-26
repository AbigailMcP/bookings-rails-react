# Encapsulate the concept of a booking. Bookings are made for a particular
# Space and must have a start date, end date and a description.
class Booking < ApplicationRecord
  belongs_to :space

  validates_presence_of :start_date, :end_date, :description

  # TODO: Move this into a JSON view using somethting like JBuilder, and do the
  # same for spaces.
  #
  # Returns a version of a Booking instance that's most useful for the
  # frontend. Let's handle date formatting here in Ruby cos it's easier :)
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
