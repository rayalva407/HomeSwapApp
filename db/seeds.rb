# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Ray", email: "email@email.com", password: "password1")
User.create(name: "Bob", email: "email2@email.com", password: "password2")
User.create(name: "Joe", email: "email3@email.com", password: "password3")

Home.create(address: "123 Sample Address Ln.")
Home.create(address: "234 Another Address St.")
Home.create(address: "321 Cool Address St.")

Trip.create(home_id: 3, user_id: 1, start_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("09/15/2009 8:00", "%m/%d/%Y %H:%M"))
Trip.create(home_id: 1, user_id: 3, start_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("09/15/2009 8:00", "%m/%d/%Y %H:%M"))
Trip.create(home_id: 2, user_id: 2, start_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("09/15/2009 8:00", "%m/%d/%Y %H:%M"))