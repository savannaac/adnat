# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# adnat seeds

organizations = Organization.create([{ name: "Drip Drop", hourly_rate: 25 }, { name: "Garden Gnomes", hourly_rate: 17 }, { name: "Tea Time", hourly_rate: 15 }])

# User.create([
#     { 
#         organization_id: 1, 
#         name: "Sav", 
#         email: "savannaac@gmail.com", 
#         password: "123456"
#     },
#     {
#         organization_id: 3, 
#         name: "Ziggy", 
#         email: "ziggy@gmail.com", 
#         password: "Ziggy!" 
#     },
#     {
#         organization_id: 1, 
#         name: "CHRIS", 
#         email: "chris@gmail.com", 
#         password: "303303"
#     },
    # {
        # organization_id: 2, 
        # name: "Edson", 
        # email: "edson@gmail.com", 
        # password: "012345" 
    # }
# ])

# Shift.create([
#     {
#         user_id: 1, 
#         start: DateTime.new(2022, 7, 03, 10), 
#         finish: DateTime.new(2022, 7, 03, 16), 
#         break_length: 30  
#     },
    # { 
    #     user_id: 3, 
    #     start: DateTime.new(2022, 7, 04, 11), 
    #     finish: DateTime.new(2022, 7, 04, 17), 
    #     break_length: 60  
    # },
    # {
    #     user_id: 4, 
    #     start: DateTime.new(2022, 7, 04, 12), 
    #     finish: DateTime.new(2022, 7, 04, 18), 
    #     break_length: 45    
    # }
# ])