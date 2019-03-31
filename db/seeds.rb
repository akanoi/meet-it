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
  {kind: 1, description: 'Уровень подготовки: средний'},
  {kind: 1, description: 'Уровень подготовки: выше среднего'},
  {kind: 2, description: 'Не курить'},
  {kind: 2, description: 'Не употреблять алкоголь'},
  {kind: 2, description: 'Не ругаться матом'}
])

places = Place.create!([
  {name: 'Wok', address: 'Galleria Minsk', description: 'Азиатская кухня'},
  {name: 'Эль-Патио', address: 'Galleria Minsk', description: 'Ресторан итальянской кухни'},
  {name: 'Столовая', address: 'Обойная 12', description: 'Столовая Неорестор'},
  {name: 'Теннис', address: 'Офис 8 этажа', description: 'Игра в настольный теннис'},
  {name: 'Кикер', address: 'Офис 8 этажа', description: 'Игра в кикер'}
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
    description: 'Эль-Патио',
    place_id: 1,
    status: true,
    privacy: false,
    kind: 0,
    requirements: Requirement.where(kind: [0])},
  {
    date: '2019-07-14',
    datetime: '2019-07-14 13:30:00',
    description: 'Столовая',
    place_id: 3,
    status: false,
    privacy: false,
    kind: 0,
    requirements: Requirement.where(kind: [2])
  },
  {
    date: '2019-07-13',
    datetime: '2019-07-13 13:00:00',
    description: 'Wok',
    place_id: 1,
    status: true,
    privacy: false,
    kind: 0,
    requirements: Requirement.where(kind: [0, 2])
  },
  {
    date: '2019-07-14',
    datetime: '2019-07-14 18:00:00',
    description: 'Столовая',
    place_id: 3,
    status: false,
    privacy: false,
    kind: 0,
    requirements: Requirement.where(kind: [2])
  },
  {
    date: '2019-07-14',
    datetime: '2019-07-14 18:00:00',
    description: 'Игра 4х4',
    place_id: 3,
    status: false,
    privacy: false,
    kind: 1,
    requirements: Requirement.where(kind: [1])
  },
  {
    date: '2019-07-14',
    datetime: '2019-07-14 18:00:00',
    description: 'Игра 4х4',
    place_id: 3,
    status: false,
    privacy: false,
    kind: 1,
    requirements: Requirement.where(kind: [1])
  },
  {
    date: '2019-07-14',
    datetime: '2019-07-14 18:00:00',
    description: 'Игра 4х4',
    place_id: 3,
    status: false,
    privacy: false,
    kind: 1,
    requirements: Requirement.where(kind: [1])
  },
  {
    date: '2019-07-14',
    datetime: '2019-07-14 18:00:00',
    description: 'Поход в кино на Человека-паука',
    place_id: 3,
    status: false,
    privacy: false,
    kind: 3,
    requirements: Requirement.where(kind: [2])
  },
  {
    date: '2019-07-14',
    datetime: '2019-07-14 18:00:00',
    description: 'Поход в Телепорт',
    place_id: 3,
    status: false,
    privacy: true,
    kind: 3,
    requirements: Requirement.where(kind: [2])
  }
])

users = User.create!([
  {
    name: 'Maksim Tuleika',
    email: 'Maksim@profitero.com',
    created_at: '2019-07-14 18:00:00',
    updated_at: '2019-07-14 18:00:00',
    skype: 'john.skype',
    phone: '+2222222222',
    telegram: 'john.telegram',
    password: 'asdasdaada',
    encrypted_password: '$2a$11$6uRaqtnuq3IMIByz.DewWeGclJQ/j8ma1oo16FAOdmxJYgkTy4t7a',
    reset_password_token: 'asdndas makj asndnajndjandj',
    reset_password_sent_at: '2019-07-14 18:00:00',
    remember_created_at: '2019-07-14 18:00:00'
  },
  {
    name: 'Igor Kazakevich',
    email: 'Igor@profitero.com',
    created_at: '2019-07-14 18:00:00',
    updated_at: '2019-07-14 18:00:00',
    skype: 'john.skype',
    phone: '+2222222222',
    telegram: 'john.telegram',
    password: 'asdasdaada',
    encrypted_password: '$2a$11$6uRaqtnuq3IMIByz.DewWeGclJQ/j8ma1oo16FAOdmxJYgkTy4t7a',
    reset_password_token: 'asdnasndjifsdjisnajndjandj',
    reset_password_sent_at: '2019-07-14 18:00:00',
    remember_created_at: '2019-07-14 18:00:00'
  },
  {
    name: 'Aleh Kanoika',
    email: 'Aleh@profitero.com',
    created_at: '2019-07-14 18:00:00',
    updated_at: '2019-07-14 18:00:00',
    skype: 'john.skype',
    phone: '+2222222222',
    telegram: 'john.telegram',
    password: 'asdasdaada',
    encrypted_password: '$2a$11$6uRaqtnuq3IMIByz.DewWeGclJQ/j8ma1oo16FAOdmxJYgkTy4t7a',
    reset_password_token: 'asdnasdaasndnajndjandj',
    reset_password_sent_at: '2019-07-14 18:00:00',
    remember_created_at: '2019-07-14 18:00:00'
  },
  {
    name: 'Irina Medvedeva',
    email: 'Irina@profitero.com',
    created_at: '2019-07-14 18:00:00',
    updated_at: '2019-07-14 18:00:00',
    skype: 'john.skype',
    phone: '+2222222222',
    telegram: 'john.telegram',
    password: 'asdasdaada',
    encrypted_password: '$2a$11$6uRaqtnuq3IMIByz.DewWeGclJQ/j8ma1oo16FAOdmxJYgkTy4t7a',
    reset_password_token: 'asdnasndnczzajndjandj',
    reset_password_sent_at: '2019-07-14 18:00:00',
    remember_created_at: '2019-07-14 18:00:00'
  },
  {
    name: 'Denis Pastushuk',
    email: 'Denis@profitero.com',
    created_at: '2019-07-14 18:00:00',
    updated_at: '2019-07-14 18:00:00',
    skype: 'john.skype',
    phone: '+2222222222',
    telegram: 'john.telegram',
    password: 'asdasdaada',
    encrypted_password: '$2a$11$6uRaqtnuq3IMIByz.DewWeGclJQ/j8ma1oo16FAOdmxJYgkTy4t7a',
    reset_password_token: 'asdndasasndnajndjandj',
    reset_password_sent_at: '2019-07-14 18:00:00',
    remember_created_at: '2019-07-14 18:00:00'
  },
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
  {user_id: 1, event_id: 1, role: 1},
  {user_id: 2, event_id: 1, role: 0},
  {user_id: 3, event_id: 1, role: 1},
  {user_id: 2, event_id: 2, role: 0},
  {user_id: 3, event_id: 2, role: 0},
  {user_id: 4, event_id: 2, role: 0},
  {user_id: 1, event_id: 3, role: 1},
  {user_id: 4, event_id: 4, role: 1},
  {user_id: 5, event_id: 4, role: 0},
  {user_id: 1, event_id: 5, role: 1},
  {user_id: 1, event_id: 6, role: 1},
  {user_id: 2, event_id: 7, role: 1},
  {user_id: 3, event_id: 8, role: 1},
  {user_id: 4, event_id: 9, role: 1},
])

users[0].interests << Interest.all
users[1].interests << Interest.all
users[2].interests << Interest.all
users[3].interests << Interest.all
users[4].interests << Interest.all
