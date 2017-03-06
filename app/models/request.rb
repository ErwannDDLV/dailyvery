class Request < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :rider, class_name: 'User', optional: true
  belongs_to :departure, class_name: 'Location'
  belongs_to :arrival, class_name: 'Location'

  validates :departure, presence: true
  validates :arrival, presence: true
  validates :parcel, presence: true

  after_create  -> { set_distance(save: true) }
  after_create -> { set_price(save: true) }

  enum status: [ :created, :pending, :done ]

  def self.parcel_type_icon(parcel)
      case parcel
        when 0 then return 'icons/envelope.svg'
        when 1 then return 'icons/basket.svg'
        when 2 then return 'icons/sofa.svg'
      end
  end

  def parcel_icon
    Request.parcel_type_icon(self.parcel)
  end

  def set_distance(option = {})
    self.distance = self.departure.distance_to([self.arrival.latitude, self.arrival.longitude])
    if option[:save]
      self.save
    end
    self.distance
  end

  def set_price(option = {})
    distance_coef = [0.8, 1, 1.5]
    fix = [0.5, 1, 1.5]
    self.price = ((distance_coef[self.parcel] * self.distance) + fix[self.parcel]).round
    if option[:save]
      self.save
    end
    self.price
  end

end
