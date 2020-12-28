class VenueOwner::PaymentsController < ApplicationController

    protect_from_forgery

    layout "landing"

    def update_subscription_payment 
        # @user = User.find_by_id(params[:id])
         debugger 
        current_user.update(payment_status: "paid")
        PaymentMailer.with( venue: @venue, user: current_user).payment_paid_email.deliver_now
        redirect_to venue_owner_venues_path, notice: "payment successfully paid"
    end 

    def get_subscription_payment
    debugger
    current_user.update(subscription: params)
       
    end
end