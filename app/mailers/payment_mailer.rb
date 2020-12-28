class PaymentMailer < ApplicationMailer
     
    def payment_paid_email
         debugger
         @venue   = params[:venue]
         @user = params[:user]

        mail( to: 'this.mehmood@gmail.com', subject:"payment successfully paid")
    
    end     

end