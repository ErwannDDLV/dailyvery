class Customer::RequestsController < ApplicationController

  skip_before_action :authenticate_user!, only: :new

  def index
    @customer_requests = current_user.customer_requests
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(customer_request_params)
    # todo / refacto : Pas d'autre moyen trouvé pour passer l'id customer
    @request.customer = current_user
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
