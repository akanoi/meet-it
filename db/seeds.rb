# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

requirements = Requirement.create!([
  {kind: 0, description: 'Быть весёлым'},
  {kind: 1, description: 'Иметь спортивную одежду'},
  {kind: 2, description: 'Не курить'}
])

places = Place.create!([
  {name: 'Wok', address: 'Galleria Minsk', description: 'Азиатская кухня'},
  {name: 'Эль-Патио', address: 'Galleria Minsk', description: 'Ресторан итальянской кухни'},
  {name: 'Столовая', address: 'Обойная 12', description: 'Столовая Неорестор'},
  {name: 'Теннис', address: 'Офис 8 этажа', description: 'Игра в настольный теннис'}
])

interests = Interest.create!([
  {name: 'food'},
  {name: 'sport'},
  {name: 'gaming'},
  {name: 'books'},
  {name: 'movies'}
])

events = Event.create!([
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

users = User.create!([
  {
    name: 'anton',
    email: 'anton@profitero.com',
    skype: 'anton.skype',
    phone: '+8888888888',
    telegram: 'anton.telegram',
    password: 'asdasdaada',
    encrypted_password: '$2a$11$6uRaqtnuq3IMIByz.DewWeGclJQ/j8ma1oo16FAOdmxJYgkTy4t7a'
  },
  {
    name: 'vlad',
    email: 'vlad@profitero.com',
    skype: 'vlad.skype',
    phone: '+999999999',
    telegram: 'vlad.telegram',
    password: 'asdasdaada',
    encrypted_password: '$2a$11$6uRaqtnuq3IMIByz.DewWeGclJQ/j8ma1oo16FAOdmxJYgkTy4t7a'
  },
  {
    name: 'john',
    email: 'john@profitero.com',
    created_at: '2019-07-14 18:00:00',
    updated_at: '2019-07-14 18:00:00',
    skype: 'john.skype',
    phone: '+2222222222',
    telegram: 'john.telegram',
    password: 'asdasdaada',
    encrypted_password: '$2a$11$6uRaqtnuq3IMIByz.DewWeGclJQ/j8ma1oo16FAOdmxJYgkTy4t7a',
    reset_password_token: 'asdnasndnajndjandj',
    reset_password_sent_at: '2019-07-14 18:00:00',
    remember_created_at: '2019-07-14 18:00:00'
  }
])

questions = Question.create!([
   {
     user_id: 1,
     question: 'Сколько у тебя рук?',
     answer: '',
     user_to_id: 2,
     anon: true
   },
   {
     user_id: 2,
     question: 'Сколько раз в день ты куришь?',
     answer: '',
     user_to_id: 1,
     anon: false
   }
])

EventUser.create!([
  {user_id: 1, event_id: 1, role: 0},
  {user_id: 1, event_id: 1, role: 1},
  {user_id: 2, event_id: 2, role: 1},
  {user_id: 2, event_id: 2, role: 0},
  {user_id: 3, event_id: 1, role: 1},
  {user_id: 3, event_id: 2, role: 1}
])

users[0].interests << Interest.all
users[1].interests << Interest.all
users[2].interests << Interest.all
