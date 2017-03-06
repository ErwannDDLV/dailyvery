class Customer::RequestsController < ApplicationController

  skip_before_action :authenticate_user!, only: :new

  def index
    @customer_requests = current_user.customer_requests
  end

  def new
    @request = Request.new
  end

  end

  def create
    parameters = {
      description: customer_request_params[:description],
      parcel: customer_request_params[:parcel],
      customer: current_user,
      departure: Location.create(address: customer_request_params[:departure]),
      arrival: Location.create(address: customer_request_params[:arrival])
    }

    @request = Request.new(parameters)
    if @request.save
      redirect_to customer_requests_path
    else
      render :new
    end
  end

  private

  def customer_request_params
    params.require(:request).permit(:description, :departure, :arrival, :parcel)
  end

end
