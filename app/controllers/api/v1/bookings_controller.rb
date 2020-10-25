# Responsible for returning information about the bookings in the system.
class Api::V1::BookingsController < ApplicationController
  def index
    render json: { bookings: Booking.all, spaces: Space.all }
  end
end
