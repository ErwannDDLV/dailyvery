class Rider::RequestsController < ApplicationController
  def index
    @rider_requests = current_user.rider_requests
  end
end
