class Location < ApplicationRecord
  has_one :departure_request, foreign_key: "departure_id", class_name: "Request"
  has_one :arrival_request, foreign_key: "arrival_id", class_name: "Request"

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
