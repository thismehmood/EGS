class CustomersController < ApplicationController
  def index
      @customers = Customer.all
  end
  def new
    @customers = Customer.new
  end

  def create
     @customers = Customer.new(name: params[:client][:name],
     phone: params[:client][:phone],
     email: params[:client][:email])
     @customers.save
     redirect_to "/customers/index"
           
  end

end