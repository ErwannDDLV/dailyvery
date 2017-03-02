class RequestsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index
  before_action :set_request, only: [:show, :update]

  def index

    @requests = Request.all

    if params[:search].nil? || params[:search][:address].empty?
      searched_address = '107 cours Balguerie Stuttenberg, 33000 Bordeaux'
      searched_radius = 5
    else
      searched_address = params[:search][:address]
      searched_radius = params[:search][:radius].to_i
    end
    # if params[:search][:radiu].nil?
    #   searched_radius = 5
    # else
    #   searched_radius = params[:search][:radiu].to_i
    # end


    #@departures = Location.joins("INNER JOIN requests ON locations.id = requests.departure_id")
                           #.near(searched_address, searched_radius)
                          #.where.not(latitude: nil, longitude: nil)
                         #.where.not("locations.latitude = ? AND locations.longitude = ?", nil, nil)
    @departures = Location.joins(:departure_request)
                           .near(searched_address, searched_radius)
                          #.where.not(latitude: nil, longitude: nil)
                         #.where.not("locations.latitude = ? AND locations.longitude = ?", nil, nil)

    @hash = Gmaps4rails.build_markers(@departures) do |departure, marker|
      marker.lat departure.latitude
      marker.lng departure.longitude
      marker.infowindow render_to_string(partial: "/requests/map_box", locals: { departure: departure })
      marker.json({
        lat_arrival: departure.departure_request.arrival.latitude,
        lng_arrival: departure.departure_request.arrival.longitude
        })
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
