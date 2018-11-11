# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Member.create(email: 'peteretep@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', first_name: 'Pete', last_name: 'Armstrong', gig_admin: true, admin: true)
Member.create(email: 'ruth@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', first_name: 'Ruth', last_name: 'Cape', gig_admin: true, admin: false )
Member.create(email: 'liv@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', first_name: 'Liv', last_name: 'Glatt', gig_admin: false, admin: false)

