# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Request.destroy_all
User.destroy_all

users = [
  {
    email: 'test1@gmail.com',
    password: 'password',
    address: '23, cours du Medoc, 33000 Bordeaux'
  },
  {
    email: 'test2@gmail.com',
    password: 'password',
    address: '40 cours Saint Louis, 33000 Bordeaux'
  },
  {
    email: 'test3@gmail.com',
    password: 'password',
    address: '50 rue Notre Dame, 33000 Bordeaux'
  },
  {
    email: 'test4@gmail.com',
    password: 'password',
    address: '634, cours de la Liberation, 33400 Talence'
  },
  {
    email: 'test5@gmail.com',
    password: 'password',
    address: '10 rue de la Dalbade, 31000 Toulouse'
  }
]

users_arr = []
users.each do |user|
  user_new = User.new(user)
  if user_new.save
    puts "user id: #{user_new.id} OK"
    users_arr << user_new
  end
end

requests = [
  {
    departure: '20 cours Pasteur, 33000 Bordeaux',
    arrival: '10 cours Saint Louis, 33000 Bordeaux',
    description: '4 chemises à récupérer au pressing',
    parcel: 1,
    customer: users_arr[0]
  },
  {
    departure: '8 impasse Barreyre Deuxième, 33000 Bordeaux',
    arrival: '5 rue Robert d\'Ennery, 33200 Bordeaux',
    description: 'sac de sport',
    parcel: 1,
    customer: users_arr[1]
  },
  {
    departure: '28 rue de Pessac, 33000 Bordeaux',
    arrival: '14 rue Notre Dame, 33000 Bordeaux',
    description: 'cle à molette',
    parcel: 1,
    customer: users_arr[1],
    rider: users_arr[2]
    },
  {
    departure: '1719 Allée Margaux, 33000 Bordeaux',
    arrival: '115 cours Balguerie Stuttenberg, 33200 Bordeaux',
    description: 'panier de legumes',
    parcel: 1,
    customer: users_arr[2],
    rider: users_arr[1]
    },
  {
    departure: '1 rue André Messager, 33400 Talence',
    arrival: '263 avenue de Tivoli, 33110 Le Bouscat',
    description: 'chaussures chez le coordonnier',
    parcel: 1,
    customer: users_arr[4]
    },
]


requests.each do |request|
  request_new = Request.new(request)
  if request_new.save
    puts "request id: #{request_new.id} - #{request_new.description}  OK"
  end
end

