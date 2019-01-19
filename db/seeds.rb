# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Instrument.create(id: 1, name: 'Soprano Sax', family: 'saxophones')
Instrument.create(id: 2, name: 'Alto Sax', family: 'saxophones')
Instrument.create(id: 3, name: 'Tenor Sax', family: 'saxophones')
Instrument.create(id: 4, name: 'Baritone Sax', family: 'basses')

Instrument.create(id: 5, name: 'Trombone', family: 'trombones')
Instrument.create(id: 6, name: 'Trumpet', family: 'trumpets')
Instrument.create(id: 7, name: 'Tenor Horn', family: 'horns')
Instrument.create(id: 8, name: 'Baritone Horn', family: 'horns')
Instrument.create(id: 9, name: 'Sousaphone', family: 'basses')

Instrument.create(id: 10, name: 'Snare', family: 'percussion')
Instrument.create(id: 11, name: 'Bass', family: 'percussion')
Instrument.create(id: 12, name: 'Triangle', family: 'percussion')


Member.create(email: 'peteretep@gmail.com', password: 'topsecret',
              password_confirmation: 'topsecret',
              first_name: 'Pete', last_name: 'Armstrong',
              gig_admin: true, admin: true, instruments: [Instrument.find(3)])
Member.create(email: 'ruth@gmail.com', password: 'topsecret',
              password_confirmation: 'topsecret',
              first_name: 'Ruth', last_name: 'Cape',
              gig_admin: true, admin: false, instruments: [Instrument.find(2)])
Member.create(email: 'liv@gmail.com', password: 'topsecret',
              password_confirmation: 'topsecret', first_name: 'Liv',
              last_name: 'Glatt', gig_admin: false, admin: false, instruments: [Instrument.find(4)])