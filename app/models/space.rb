# Encapsulates the concept of a space i.e. a location where a booking can be
# made.
class Space < ApplicationRecord
  has_many :bookings

  validates_presence_of :name
end
