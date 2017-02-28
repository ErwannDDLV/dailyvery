class RequestsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index
  before_action :set_request, only: [:show, :update]

  def index
    @requests = Request.all
  end

  def show
  end

  def update
    @request.rider = current_user
    if @request.save
      redirect_to rider_requests_path
    else
      render 'requests/index'
    end
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end


end
