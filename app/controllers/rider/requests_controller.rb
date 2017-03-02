class Rider::RequestsController < ApplicationController
  def index
    requests = current_user.rider_requests
    @rider_requests = requests.where(status: 1)
    @rider_done = requests.where(status: 2)
  end
end
