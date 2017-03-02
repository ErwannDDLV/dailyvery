class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :customer_requests, foreign_key: "customer_id", class_name: "Request"
  has_many :rider_requests, foreign_key: "rider_id", class_name: "Request"

  def anonymize
    "#{first_name} #{last_name[0].uppcase}."
  end

end
