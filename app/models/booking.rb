class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :venue

    # before_create :check_booking

    # def check_booking 
    #   case current_user.subscription
    #   when "basic"
    #     return false if current_user.bookings.length == 5
    #   when "pro"
    #     return false if current_user.bookings.length == 20
    #   default 
    #     return true
    #   end
      
    # end
  end