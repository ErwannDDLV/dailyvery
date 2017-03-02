class Request < ApplicationRecord
  belongs_to :customer, class_name: 'User'
  belongs_to :rider, class_name: 'User', optional: true
  belongs_to :departure, class_name: 'Location'
  belongs_to :arrival, class_name: 'Location'

  validates :departure, presence: true
  validates :arrival, presence: true
  validates :parcel, presence: true

  enum status: [ :created, :pending, :done ]

  def parcel_icon
    case self.parcel
      when 0 then return 'icons/envelope.svg'
      when 1 then return 'icons/basket.svg'
      when 2 then return 'icons/sofa.svg'
    end
  end
end
