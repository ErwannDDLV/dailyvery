class Customer::RequestsController < ApplicationController

  skip_before_action :authenticate_user!, only: :new

  def index
    @customer_requests = current_user.customer_requests
  end

  def new
    @request = Request.new
  end

  def create
    parameters = {
      description: customer_request_params[:description],
      parcel: customer_request_params[:parcel],
      polyline: customer_request_params[:polyline],
      customer: current_user,
      departure: Location.create(address: customer_request_params[:departure]),
      arrival: Location.create(address: customer_request_params[:arrival])
    }

    @request = Request.new(parameters)

    @request.prepare

    if @request.save
      redirect_to customer_requests_path
    else
      render :new
    end
  end

  def update
    # byebug
    @request = Request.find(params[:id])
    @request.status = 2
    if @request.save
      respond_to do |format|
        format.html { redirect_to customer_requests_path }
        format.js  # <-- will render `app/views/requests/update.js.erb`
      end
      #redirect_to rider_requests_path
    else
      respond_to do |format|
        format.html { render 'customer/requests/index' }
        format.js  # <-- will render `app/views/requests/update.js.erb`
      end
    end

  end

  private

  def customer_request_params
    params.require(:request).permit(:description, :departure, :arrival, :parcel, :polyline)
  end

end
