class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :venue
  end