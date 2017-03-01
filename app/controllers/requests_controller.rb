class RequestsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index
  before_action :set_request, only: [:show, :update]

  def index
    @requests = Request.all
    @departures = Location.joins("INNER JOIN requests ON locations.id = requests.departure_id")
                         .near('12 cours du Medoc, 33000 Bordeaux', 5)
                        #.where.not(latitude: nil, longitude: nil)
                       #.where.not("locations.latitude = ? AND locations.longitude = ?", nil, nil)



    @hash = Gmaps4rails.build_markers(@departures) do |departure, marker|
      marker.lat departure.latitude
      marker.lng departure.longitude
      marker.infowindow render_to_string(partial: "/requests/map_box", locals: { departure: departure })
end

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
