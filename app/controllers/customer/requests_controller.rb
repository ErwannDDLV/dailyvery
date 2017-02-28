class Customer::RequestsController < ApplicationController

  def index
    @customer_requests = current_user.customer_requests
  end

  def new
  end

  def create
  end

end
