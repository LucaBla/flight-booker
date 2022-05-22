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

# NYC Flights
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'FF2521',
              time: '17:20', duration: '2:00', price: 100.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 1, arrival_airport_id: 3, flight_code: 'AD2428',
              time: '17:20', duration: '3:30', price: 50.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 1, arrival_airport_id: 4, flight_code: 'CC2442',
              time: '17:20', duration: '5:00', price: 200.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 1, arrival_airport_id: 5, flight_code: 'WO9872',
              time: '17:20', duration: '2:20', price: 500.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 1, arrival_airport_id: 6, flight_code: 'BB1111',
              time: '8:30', duration: '2:00', price: 120.50)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'AA4444',
              time: '7:30', duration: '2:00', price: 170.25)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'GG2521',
              time: '17:20', duration: '2:00', price: 100.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'GG3521',
              time: '17:20', duration: '2:00', price: 100.00)

# FRA Flights
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 2, arrival_airport_id: 3, flight_code: 'FF3521',
              time: '17:20', duration: '2:00', price: 100.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 2, arrival_airport_id: 4, flight_code: 'AD3428',
              time: '17:20', duration: '3:30', price: 50.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 2, arrival_airport_id: 5, flight_code: 'CC3442',
              time: '17:20', duration: '5:00', price: 200.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 2, arrival_airport_id: 6, flight_code: 'WO3872',
              time: '17:20', duration: '2:20', price: 500.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 2, arrival_airport_id: 1, flight_code: 'BB3111',
              time: '8:30', duration: '2:00', price: 120.50)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 2, arrival_airport_id: 1, flight_code: 'AA3444',
              time: '7:30', duration: '2:00', price: 170.25)

# AMS Flights
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 3, arrival_airport_id: 4, flight_code: 'FF4521',
              time: '17:20', duration: '2:00', price: 100.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 3, arrival_airport_id: 5, flight_code: 'AD4428',
              time: '17:20', duration: '3:30', price: 50.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 3, arrival_airport_id: 6, flight_code: 'CC4442',
              time: '17:20', duration: '5:00', price: 200.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 3, arrival_airport_id: 1, flight_code: 'WO4872',
              time: '17:20', duration: '2:20', price: 500.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 3, arrival_airport_id: 2, flight_code: 'BB4111',
              time: '8:30', duration: '2:00', price: 120.50)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 3, arrival_airport_id: 4, flight_code: 'AA5444',
              time: '7:30', duration: '2:00', price: 170.25)

# LAX Flights
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 4, arrival_airport_id: 5, flight_code: 'FF5521',
              time: '17:20', duration: '2:00', price: 100.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 4, arrival_airport_id: 6, flight_code: 'AD5428',
              time: '17:20', duration: '3:30', price: 50.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 4, arrival_airport_id: 1, flight_code: 'CC5442',
              time: '17:20', duration: '5:00', price: 200.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 4, arrival_airport_id: 2, flight_code: 'WO5872',
              time: '17:20', duration: '2:20', price: 500.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 4, arrival_airport_id: 3, flight_code: 'BB5111',
              time: '8:30', duration: '2:00', price: 120.50)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 4, arrival_airport_id: 3, flight_code: 'AA6444',
              time: '7:30', duration: '2:00', price: 170.25)

# CAN Flights
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 5, arrival_airport_id: 6, flight_code: 'FF6521',
              time: '17:20', duration: '2:00', price: 100.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 5, arrival_airport_id: 1, flight_code: 'AD6428',
              time: '17:20', duration: '3:30', price: 50.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 5, arrival_airport_id: 2, flight_code: 'CC6442',
              time: '17:20', duration: '5:00', price: 200.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 5, arrival_airport_id: 3, flight_code: 'WO6872',
              time: '17:20', duration: '2:20', price: 500.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 5, arrival_airport_id: 4, flight_code: 'BB6111',
              time: '8:30', duration: '2:00', price: 120.50)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 5, arrival_airport_id: 6, flight_code: 'AA7444',
              time: '7:30', duration: '2:00', price: 170.25)

# DXB Flights
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 6, arrival_airport_id: 1, flight_code: 'FF7521',
              time: '17:20', duration: '2:00', price: 100.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 6, arrival_airport_id: 2, flight_code: 'AD7428',
              time: '17:20', duration: '3:30', price: 50.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 6, arrival_airport_id: 3, flight_code: 'CC7442',
              time: '17:20', duration: '5:00', price: 200.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 6, arrival_airport_id: 4, flight_code: 'WO7872',
              time: '17:20', duration: '2:20', price: 500.00)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 6, arrival_airport_id: 5, flight_code: 'BB7111',
              time: '8:30', duration: '2:00', price: 120.50)
Flight.create(date: Date.new(2030, 6, 10), depature_airport_id: 6, arrival_airport_id: 2, flight_code: 'AA7444',
              time: '7:30', duration: '2:00', price: 170.25)

# Flight other Date
Flight.create(date: Date.new(2035, 6, 10), depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'AF2521',
              time: '17:20', duration: '2:00', price: 100.00)
Flight.create(date: Date.new(2035, 6, 10), depature_airport_id: 1, arrival_airport_id: 3, flight_code: 'BD2428',
              time: '17:20', duration: '3:30', price: 50.00)
Flight.create(date: Date.new(2035, 6, 10), depature_airport_id: 1, arrival_airport_id: 4, flight_code: 'DC2442',
              time: '17:20', duration: '5:00', price: 200.00)
Flight.create(date: Date.new(2035, 6, 10), depature_airport_id: 1, arrival_airport_id: 5, flight_code: 'EO9872',
              time: '17:20', duration: '2:20', price: 500.00)
Flight.create(date: Date.new(2035, 6, 10), depature_airport_id: 1, arrival_airport_id: 6, flight_code: 'GB1111',
              time: '8:30', duration: '2:00', price: 120.50)
Flight.create(date: Date.new(2035, 6, 10), depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'HA4444',
              time: '7:30', duration: '2:00', price: 170.25)
Flight.create(date: Date.new(2035, 6, 10), depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'AG2521',
              time: '17:20', duration: '2:00', price: 100.00)
Flight.create(date: Date.new(2035, 6, 10), depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'JG3521',
              time: '17:20', duration: '2:00', price: 100.00)
