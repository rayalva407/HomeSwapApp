# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Ray")
User.create(name: "Bob")
User.create(name: "Joe")

Home.create(address: "123 Sample Address Ln.", user_id: User.all.sample.id)
Home.create(address: "234 Another Address St.", user_id: User.all.sample.id)
Home.create(address: "321 Cool Address St.", user_id: User.all.sample.id)

Swap.create(start_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("09/15/2009 8:00", "%m/%d/%Y %H:%M"))
Swap.create(start_date: DateTime.strptime("09/24/2009 8:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("09/26/2009 8:00", "%m/%d/%Y %H:%M"))
Swap.create(start_date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"), end_date: DateTime.strptime("09/1/2009 8:00", "%m/%d/%Y %H:%M"))

HomeSwap.create(home_id: Home.all.sample.id, swap_id: Swap.all.sample.id)
HomeSwap.create(home_id: Home.all.sample.id, swap_id: Swap.all.sample.id)
HomeSwap.create(home_id: Home.all.sample.id, swap_id: Swap.all.sample.id)