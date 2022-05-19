# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create([{ code: 'NYC' }, { code: 'FRA' }, { code: 'AMS' },
                           { code: 'LAX' }, { code: 'CAN' }, { code: 'DXB' }])

flights = Flight.create([{date: Date.today, depature_airport_id: 1, arrival_airport_id: 5, flight_code: 'Coolman'},
                         {date: Date.today, depature_airport_id: 1, arrival_airport_id: 2, flight_code: 'Coolman2'}])