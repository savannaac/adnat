# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# adnat seeds

# organizations = Organization.create([{ name: "Tea Time", hourly_rate: 15 }, { name: "Rock and Bowl", hourly_rate: 17 }])

User.create([
    { 
        organization_id: 1, 
        # user_id: 1,
        name: "Sav", 
        email: "savannaac@gmail.com", 
        password: "123456"
    },
    {
        organization_id: 1, 
        # user_id: 2, 
        name: "CHRIS", 
        email: "chris@gmail.com", 
        password: "303303"
    },
    {
        organization_id: 1, 
        # user_id: 2, 
        name: "Ziggy", 
        email: "ziggy@gmail.com", 
        password: "123456" 
    }
])

# Shift.create([
#     {
#         organization_id: 1, 
#         user_id: 1, 
#         start: DateTime.new(2022, 7, 03, 10), 
#         finish: DateTime.new(2022, 7, 03, 16), 
#         break_length: 30  
#     },
#     {
#         organization_id: 1, 
#         user_id: 2, 
#         start: DateTime.new(2022, 7, 04, 11), 
#         finish: DateTime.new(2022, 7, 04, 17), 
#         break_length: 60  
#     }
# ])