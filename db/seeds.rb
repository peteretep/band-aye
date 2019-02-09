# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Instrument.create(id: 1, name: 'Soprano Sax', family: 'saxophone')
Instrument.create(id: 2, name: 'Alto Sax', family: 'saxophone')
Instrument.create(id: 3, name: 'Tenor Sax', family: 'saxophone')
Instrument.create(id: 4, name: 'Baritone Sax', family: 'bass')

Instrument.create(id: 5, name: 'Trombone', family: 'trombone')
Instrument.create(id: 6, name: 'Trumpet', family: 'trumpet')
Instrument.create(id: 7, name: 'Tenor Horn', family: 'horn')
Instrument.create(id: 8, name: 'Baritone Horn', family: 'horn')
Instrument.create(id: 9, name: 'Sousaphone', family: 'bass')

Instrument.create(id: 10, name: 'Snare Drum', family: 'percussion')
Instrument.create(id: 11, name: 'Bass Drum', family: 'percussion')
Instrument.create(id: 12, name: 'Triangle', family: 'percussion')


# Soprano saxes
Member.create(email: 'lucy@brass.aye', password: 'brassaye',
              password_confirmation: 'brassaye',
              first_name: 'Lucy', last_name: 'Reynolds',
              gig_admin: false, admin: false, instrument: Instrument.find(1))

# Alto saxes
Member.create(email: 'ruth@gmail.com', password: 'topsecret',
              password_confirmation: 'topsecret',
              first_name: 'Ruth', last_name: 'Cape',
              gig_admin: true, admin: false, instrument: Instrument.find(2))
Member.create(
  email: 'meeching@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Meeching',
  instrument: Instrument.find(2))
Member.create(
  email: 'stephen@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Stephen',
  instrument: Instrument.find(2))
Member.create(
  email: 'gemma@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Gemma',
  instrument: Instrument.find(2))
Member.create(
  email: 'iain@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Iain',
  instrument: Instrument.find(2))
# Tenor saxes
Member.create(email: 'peteretep@gmail.com', password: 'topsecret',
              password_confirmation: 'topsecret',
              first_name: 'Pete', last_name: 'Armstrong',
              gig_admin: true, admin: true, instrument: Instrument.find(3))
Member.create(
  email: 'ronan@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Ronan',
  instrument: Instrument.find(3))
Member.create(
  email: 'martin@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Martin',
  instrument: Instrument.find(3))
Member.create(
  email: 'luca@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Luca',
  instrument: Instrument.find(3))
Member.create(
  email: 'jen@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Jen',
  instrument: Instrument.find(3))
Member.create(
  email: 'charlie@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Charlie',
  instrument: Instrument.find(3))
# Bari saxes
Member.create(email: 'liv@brass.aye', password: 'brassaye',
              password_confirmation: 'brassaye', first_name: 'Liv',
              last_name: 'Glatt',
              instrument: Instrument.find(4))
Member.create(
  email: 'gaynor@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Gaynor',
  instrument: Instrument.find(4))

# Trombones
Member.create(
  email: 'scott@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Scott',
  instrument: Instrument.find(5))
Member.create(
  email: 'vanessa@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Vanessa',
  instrument: Instrument.find(5))
Member.create(
  email: 'leigh@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Leigh',
  instrument: Instrument.find(5))
Member.create(
  email: 'ross@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Ross',
  instrument: Instrument.find(5))
Member.create(
  email: 'roy@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Roy',
  instrument: Instrument.find(5))
  # Trumpets
Member.create(
  email: 'rich@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Rich',
  instrument: Instrument.find(6))
Member.create(
  email: 'karra@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Karra',
  instrument: Instrument.find(6))
Member.create(
  email: 'joe@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Joe',
  gig_Admin: true,
  instrument: Instrument.find(6))
Member.create(
  email: 'alberto@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Alberto',
  instrument: Instrument.find(6))
Member.create(
  email: 'martynas@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Martynas',
  instrument: Instrument.find(6))
Member.create(
  email: 'ben@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Ben',
  instrument: Instrument.find(6))
Member.create(
  email: 'euan@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Euan',
  instrument: Instrument.find(6))
  # Horns
Member.create(
  email: 'bob@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Bob',
  instrument: Instrument.find(7))
Member.create(
  email: 'tam@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Tam',
  instrument: Instrument.find(8))
# Sousaphone
Member.create(
  email: 'darren@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Darren',
  instrument: Instrument.find(9))


# Percussion
Member.create(
  email: 'simon@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Simon',
  instrument: Instrument.find(10))
Member.create(
  email: 'neil@brass.aye',
  password: 'brassaye',
  password_confirmation: 'brassaye',
  first_name: 'Neil',
  instrument: Instrument.find(11))
