class Customer::RequestsController < ApplicationController

  def index
    current_user = User.find(1)
    @requests = current_user.requests
    byebug
  end

  def new
  end

  def create
  end

end
