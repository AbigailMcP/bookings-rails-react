# Responsible for returning information about the bookings in the system.
class Api::V1::BookingsController < ApplicationController
  def index
    bookings = Booking.all.map(&:serialize)
    render json: { bookings: bookings, spaces: Space.all }
  end
end
