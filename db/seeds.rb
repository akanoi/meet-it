# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Requirement.create([
  {kind: 0, description: 'req1'},
  {kind: 1, description: 'req2'},
  {kind: 2, description: 'req3'}
])

Place.create([
  {name: 'pl1', address: 'ad1', description: 'desc'},
  {name: 'pl2', address: 'ad2', description: 'desc'},
  {name: 'pl3', address: 'ad3', description: 'desc'},
])

Interest.create([
  {name: 'food'},
  {name: 'sport'},
  {name: 'gaming'},
  {name: 'books'},
  {name: 'movies'}
])

Event.create([
  {
    date: '2019-07-13',
    datetime: '2019-07-13 23:59:59',
    description: 'nothing',
    place_id: 1,
    status: true,
    privacy: false,
    kind: 0,
    requirements: Requirement.all},
  {
    date: '2019-07-14',
    datetime: '2019-07-14 23:59:59',
    description: 'nothing',
    place_id: 2,
    status: false,
    privacy: false,
    kind: 1
  }
])