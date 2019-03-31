# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Requirement.create([
  {kind: 0, description: 'Быть весёлым'},
  {kind: 1, description: 'Иметь спортивную одежду'},
  {kind: 2, description: 'Не курить'}
])

Place.create([
  {name: 'Wok', address: 'Galleria Minsk', description: 'Азиатская кухня'},
  {name: 'Эль-Патио', address: 'Galleria Minsk', description: 'Ресторан итальянской кухни'},
  {name: 'Столовая', address: 'Обойная 12', description: 'Столовая Неорестор'},
  {name: 'Теннис', address: 'Офис 8 этажа', description: 'Игра в настольный теннис'}
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
    datetime: '2019-07-13 13:00:00',
    description: 'Сходить покушать',
    place_id: 1,
    status: true,
    privacy: false,
    kind: 0,
    requirements: Requirement.where(kind: [0, 1])},
  {
    date: '2019-07-14',
    datetime: '2019-07-14 18:00:00',
    description: 'Игра 2х2',
    place_id: 3,
    status: false,
    privacy: false,
    kind: 1
  }
])

User.create([
  {
    name: 'anton',
    email: 'anton@profitero.com',
    skype: 'anton.skype',
    phone: '+8888888888',
    telegram: 'anton.telegram',
    encrypted_password: 'qwerty'
  },
  {
    name: 'vlad',
    email: 'vlad@profitero.com',
    skype: 'vlad.skype',
    phone: '+999999999',
    telegram: 'vlad.telegram',
    encrypted_password: 'qwerty'
  },
  {
    name: 'john',
    email: 'john@profitero.com',
    skype: 'john.skype',
    phone: '+2222222222',
    telegram: 'john.telegram',
    encrypted_password: ''
  }
])