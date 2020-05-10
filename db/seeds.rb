# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Reset Database
Rake::Task['db:drop'].invoke
Rake::Task['db:create'].invoke
Rake::Task['db:migrate'].invoke

# Datasets

@users =
  [
    {title: 'Катя Обухова',         image: 'lib/assets/users/Катя Обухова.jpg',          email: 'obuhova@mail.com'   },
    {title: 'Лёня Пирожков',        image: 'lib/assets/users/Лёня Пирожков.jpg',         email: 'pirozhkov@mail.com' },
    {title: 'Максим Перчик',        image: 'lib/assets/users/Максим Перчик.jpg',         email: 'perchik@mail.com'   },
    {title: 'Женя Симонова',        image: 'lib/assets/users/Женя Симонова.jpg',         email: 'simonova@mail.com'  },
    {title: 'Саша Семенова',        image: 'lib/assets/users/Саша Семенова.jpg',         email: 'semenova@mail.com'  },
    {title: 'Петя Петропавловский', image: 'lib/assets/users/Петя Петропавловский.jpg',  email: 'petropav@mail.com'  },
    {title: 'Кирилл Осипов',        image: 'lib/assets/users/Кирилл Осипов.jpg',         email: 'osipov@mail.com'    },
    {title: 'Маша Пински',          image: 'lib/assets/users/Маша Пински.jpg',           email: 'pinski@mail.com'    },
    {title: 'Карина Залесская',     image: 'lib/assets/users/Карина Залесская.jpg',      email: 'zalesskaya@mail.com'},
    {title: 'Юля Каспарянц',        image: 'lib/assets/users/Юля Каспарянц.jpg',         email: 'caspar@mail.com'    },
    {title: 'Аня Чулкова',          image: 'lib/assets/users/Аня Чулкова.jpg',           email: 'chulkova@mail.com'  },
    {title: 'Даша Киселева',        image: 'lib/assets/users/Даша Киселева.jpg',         email: 'kiseleva@mail.com'  },
    {title: 'Глеб Куценок',         image: 'lib/assets/users/Глеб Куценок.jpg',          email: 'cutsenok@mail.com'  },
    {title: 'Галя Ермолаева',       image: 'lib/assets/users/Галя Ермолаева.jpg',        email: 'ermolaeva@mail.com' },
    {title: 'Арина Морозова',       image: 'lib/assets/users/Арина Морозова.jpg',        email: 'morozova@mail.com'  },
  ]

@cities =
  [
    {title: 'Москва'},
    {title: 'Самара'},
    {title: 'Берлин'},
    {title: 'Барселона'},
  ]

@collections =
  [
    {title: '10 лучших кофеен Москвы', image: 'lib/assets/collections/10кофеенмосквы.png',   identificator: 1 },
    {title: 'Гастропабы',              image: 'lib/assets/collections/гастронобар.jpg',      identificator: 2 },
    {title: 'Дома музеи',              image: 'lib/assets/collections/домамузеи.jpg',        identificator: 3 },
    {title: 'Китай город',             image: 'lib/assets/collections/китайгород.jpeg',      identificator: 4 },
    {title: 'Веганские места',         image: 'lib/assets/collections/веганместа.jpg',       identificator: 5 },
    {title: 'Любимые патрики',         image: 'lib/assets/collections/патрики.jpeg',         identificator: 6 },
    {title: 'Конструктивизм в Москве', image: 'lib/assets/collections/конструктивизм.jpg',   identificator: 7 },
    {title: 'Мой любимый маршрут',     image: 'lib/assets/collections/любимыймаршрут.jpg',   identificator: 8 },
    {title: 'Крафотовое пиво',         image: 'lib/assets/collections/пиво.jpeg',            identificator: 9 },
    {title: 'Еврейская москва',        image: 'lib/assets/collections/еврейскаямосква.jpg',  identificator: 10},
  ]

@places =
  [
    {title: 'На вина!'},
    {title: 'Yard'},
    {title: 'Maestrello'},
    {title: 'Кафе «Салют»'},
    {title: 'Кофемания'},
    {title: 'Парк Горького'},
    {title: 'ВДНХ'},
  ]

@posts =
  [
    {title: 'Кооператив черный',                                                 identificator: [1,4,5],image:'lib/assets/places/кооперативчерный.jpg'},
    {title: 'Розетка и кофе',                                                    identificator: [1,4],  image:'lib/assets/places/розеткаикофе.png'},
    {title: 'Bloom n brew',                                                      identificator: [1],    image:'lib/assets/places/bloomnbrew.jpg'},
    {title: 'Abc',                                                               identificator: [1,4],  image:'lib/assets/places/abc.jpg'},
    {title: 'David b coffee',                                                    identificator: [1,6],  image:'lib/assets/places/davidbcafe.jpg'},
    {title: 'Эрна',                                                              identificator: [1],    image:'lib/assets/places/шуховскаябашня.jpeg'},
    {title: 'Аэроплан',                                                          identificator: [1],    image:'lib/assets/places/аэроплан.jpeg'},
    {title: 'bro.we',                                                            identificator: [1],    image:'lib/assets/places/browe.jpg'},
    {title: 'Прогресс',                                                          identificator: [1],    image:'lib/assets/places/прогресс.jpeg'},
    {title: 'Салют',                                                             identificator: [1],    image:'lib/assets/places/салют.jpg'},
    {title: 'Дом культур',                                                       identificator: [2],    image:'lib/assets/places/домкультур.jpeg'},
    {title: 'Техникум',                                                          identificator: [2],    image:'lib/assets/places/техникум.jpg'},
    {title: 'Nude',                                                              identificator: [6,2],  image:'lib/assets/places/nude.jpg'},
    {title: 'Горыныч',                                                           identificator: [2],    image:'lib/assets/places/горыныч.jpg'},
    {title: 'Remy kitchen',                                                      identificator: [2],    image:'lib/assets/places/remy.jpg'},
    {title: 'blanc_',                                                            identificator: [4,2],  image:'lib/assets/places/blanc.jpg'},
    {title: 'Flora no fauna',                                                    identificator: [5,2],  image:'lib/assets/places/floranofauna.jpg'},
    {title: 'Северяне',                                                          identificator: [2],    image:'lib/assets/places/северяне.jpg'},
    {title: 'Дом музей Шаляпина',                                                identificator: [3],    image:'lib/assets/places/музейшаляпина.jpg'},
    {title: 'Дом музей Станиславского',                                          identificator: [3],    image:'lib/assets/places/музейстаниславского.jpg'},
    {title: 'Дом музей Чехова',                                                  identificator: [3],    image:'lib/assets/places/музейчехова.jpg'},
    {title: 'Дом музей Васнецова',                                               identificator: [3],    image:'lib/assets/places/пер. васнецова13_1.jpg'},
    {title: 'Дом музей Марины Цветаевой',                                        identificator: [3],    image:'lib/assets/places/музейцветаева.jpeg'},
    {title: 'Музей квартира Горького',                                           identificator: [3],    image:'lib/assets/places/музейгорького.jpg'},
    {title: 'Московская хоральная синагога',                                     identificator: [4],    image:'lib/assets/places/хоральнаясинагога.jpg'},
    {title: 'граунд солянка',                                                    identificator: [4],    image:'lib/assets/places/граунд.jpeg'},
    {title: 'Хитровская площадь',                                                identificator: [4],    image:'lib/assets/places/хитровская.jpg'},
    {title: 'Котомка',                                                           identificator: [4,5],  image:'lib/assets/places/котомка.jpg'},
    {title: 'Евангелическо-лютеранский кафедральный собор Святых Петра и Павла', identificator: [4],    image:'lib/assets/places/кафедральныйсобор_петраипавла.jpg'},
    {title: 'Яма',                                                               identificator: [4],    image:'lib/assets/places/яма.jpg'},
    {title: 'Maestrello',                                                        identificator: [4],    image:'lib/assets/places/maestrello.jpg'},
    {title: 'Ивановская горка',                                                  identificator: [4],    image:'lib/assets/places/ивановскаягорка.jpg'},
    {title: 'Matcha way',                                                        identificator: [5],    image:'lib/assets/places/matchaway.jpg'},
    {title: 'Fruits and veges',                                                  identificator: [5],    image:'lib/assets/places/fruitsandvegges.jpeg'},
    {title: 'Fresh',                                                             identificator: [5],    image:'lib/assets/places/fresh.jpg'},
    {title: 'Мох',                                                               identificator: [5],    image:'lib/assets/places/мох.jpg'},
    {title: 'Театр «Практика»',                                                  identificator: [6],    image:'lib/assets/places/театрпрактика.jpg'},
    {title: 'Музей Михаила Булгакова',                                           identificator: [6,3],  image:'lib/assets/places/музейбулгакова.jpg'},
    {title: 'Дом Шехтеля',                                                       identificator: [6,3],  image:'lib/assets/places/ДомШехтеля.jpeg'},
    {title: 'Апаковский трамвайный парк',                                        identificator: [7],    image:'lib/assets/places/апаковский парк.jpg'},
    {title: 'Шуховская башня',                                                   identificator: [7],    image:'lib/assets/places/шуховскаябашня.jpeg'},
    {title: 'Дом-коммуна РЖСКТ «Первое Замоскворецкое объединение»',             identificator: [7],    image:'lib/assets/places/домкоммунаржскт.jpg'},
    {title: 'Хавско-Шаболовский жилмассив',                                      identificator: [7],    image:'lib/assets/places/хавскощаболовскийжилмассив.jpg'},
    {title: 'Дом-коммуна Николаева',                                             identificator: [7],    image:'lib/assets/places/дом коммуна николаева.jpg'},
    {title: 'les',                                                               identificator: [8],    image:'lib/assets/places/лес.jpg'},
    {title: 'Третьяковка',                                                       identificator: [8],    image:'lib/assets/places/новаятретьяковка.jpg'},
    {title: 'Музеон',                                                            identificator: [8],    image:'lib/assets/places/музеон.jpg'},
    {title: 'Красный октябрь',                                                   identificator: [8],    image:'lib/assets/places/красныйоктябрь.jpg'},
    {title: 'Пушкинский',                                                        identificator: [8],    image:'lib/assets/places/пушкинский.jpg'},
    {title: 'Дом Кекушева на Остоженке',                                         identificator: [8],    image:'lib/assets/places/домкекушева.jpg'},
    {title: 'Сосна и липа',                                                      identificator: [9],    image:'lib/assets/places/сосна и липа.jpeg'},
    {title: 'Энтузиаст',                                                         identificator: [9],    image:'lib/assets/places/шуховскаябашня.jpeg'},
    {title: 'Бирмаркет',                                                         identificator: [9],    image:'lib/assets/places/бирмаркет.jpeg'},
    {title: 'Главпивмаг',                                                        identificator: [9],    image:'lib/assets/places/главпивмаг.jpg'},
    {title: 'Абу гош',                                                           identificator: [10],   image:'lib/assets/places/абу гош.jpg'},
    {title: 'Дизенгофф',                                                         identificator: [10],   image:'lib/assets/places/дизенгоф.jpg'},
    {title: 'Mitzva bar',                                                        identificator: [10],   image:'lib/assets/places/мицва.jpg'},
    {title: 'Еврейский музей ',                                                  identificator: [10],   image:'lib/assets/places/еврейскиймузей.jpg'},
    {title: 'Синагога на большой бронной',                                       identificator: [10],   image:'lib/assets/places/синагоганабольшойбронной.jpg'},
]

#Randoms
def random_user_id
  user_id = User.all.sample.id
end

def random_city_id
  city_id = City.all.sample.id
end

def random_place_id
  place_id = Place.all.sample.id
end

def random_collection
  Collection.all.sample
end

def random_collections
  Collection.all.sample(rand(1..5))
end

def random_latitude
  rand(55.574855...55.884167)
end

def random_longitude
  rand(37.372124...37.833899)
end

def upload_avatar
  uploader = AvatarUploader.new(User.new, :avatar)
  uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'lib/assets/users', '*')).sample))
  uploader
end

def upload_collection_cover
  uploader = CollectionCoverUploader.new(Collection.new, :cover)
  uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'lib/assets/collection_covers', '*')).sample))
  uploader
end

def upload_post_cover
  uploader = PostCoverUploader.new(Collection.new, :cover)
  uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'lib/assets/post_covers', '*')).sample))
  uploader
end

# Create Users
def create_user(user)
  password = 'testtest'
  User.create(
    title: user[:title],
    email: user[:email],
    password: password,
    password_confirmation: password,
    avatar: upload_fake_avatar
  )
end

@users.each do |user|
  u = create_user(user)
  puts "User #{u.title} created"
end


# Create Cities
def create_city(city)
  City.create(
    title: city[:title]
  )
end

@cities.each do |city|
  c = create_city(city)
  puts "City #{c.title} created"
end


# Create Places
def create_place(place)
  Place.create(
    title: place[:title],
    city_id: random_city_id
  )
end

@places.each do |place|
  p = create_place(place)
  puts "Place #{p.title} created"
end


# Create Collections
def create_collection(collection)
  Collection.create(
    title:   collection[:title],
    city_id: random_city_id,
    user_id: random_user_id,
    cover: upload_fake_collection_cover
  )
end

@collections.each do |collection|
  c = create_collection(collection)
  puts "Collection #{c.title} created"
end


# Create Posts
def create_post(post)
  Post.create(
    title:    post[:title],
    description: 'Post «' + post[:title] + '» description',
    place_id: random_place_id,
    user_id:  random_user_id,
    latitude: random_latitude,
    longitude: random_longitude,
    cover: upload_fake_post_cover
  )
end

@posts.each do |post|
  p = create_post(post)

  random_collections.each do |c|
    p.collections << c
  end

  puts "Post #{p.title} created"
end
