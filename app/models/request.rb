class Request < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :rider, class_name: 'User'

  validates :departure, presence: true
  validates :arrival, presence: true
  validates :parcel, presence: true
end
