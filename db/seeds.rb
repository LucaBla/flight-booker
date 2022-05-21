# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.create(code: 'NYC')
Airport.create(code: 'FRA')
Airport.create(code: 'AMS')
Airport.create(code: 'LAX')
Airport.create(code: 'CAN')
Airport.create(code: 'DXB')

Flight.create(date: Date.today, depature_airport_id: 1, arrival_airport_id: 5, flight_code: 'FF2521', time: '17:20', duration: '2:00')
Flight.create(date: Date.today, depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'AD2428', time: '17:20', duration: '3:30')
Flight.create(date: Date.today, depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'CC2442', time: '17:20', duration: '5:00')
Flight.create(date: Date.today, depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'WO9872', time: '17:20', duration: '2:20')
Flight.create(date: Date.today, depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'BB1111', time: '8:30', duration: '2:00')
Flight.create(date: Date.today, depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'AA4444', time: '7:30', duration: '2:00')