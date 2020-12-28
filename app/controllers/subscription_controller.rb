class SubscriptionController < ApplicationController

    def create_subscription
        debugger
            current_user.update(subscription: params[:subscription_type])
            redirect_to venue_owner_venue_payment_path
    end
     
    

 end
