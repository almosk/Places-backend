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
    {
      title: 'Александр Ефремов',
      email: 'alex@mail.com'
    },
    {
      title: 'Иван Каршаков',
      email: 'ivan@mail.com'
    },
    {
      title: 'Сергей Дудин',
      email: 'sergey@mail.com'
    },
    {
      title: 'Инна Розанова',
      email: 'inna@mail.com'
    },
    {
      title: 'Денис Щукин',
      email: 'denis@mail.com'
    },
    {
      title: 'Коля Туркин',
      email: 'лщднф@mail.com'
    },
    {
      title: 'Лена Сергеева',
      email: 'lena@mail.com'
    }
  ]

@cities =
  [
    {title: 'Москва'},
    {title: 'Самара'},
    {title: 'Берлин'},
    {title: 'Барселона'}
  ]

@collections =
  [
    {title: 'Кофейни'},
    {title: 'Рестораны'},
    {title: 'Кино'},
    {title: 'Сувениры'},
    {title: 'Летние фестивали'},
    {title: 'Музеи'},
    {title: 'Магазины одежды'}
  ]

@places =
  [
    {title: 'На вина!'},
    {title: 'Yard'},
    {title: 'Maestrello'},
    {title: 'Кафе «Салют»'},
    {title: 'Кофемания'},
    {title: 'Парк Горького'},
    {title: 'ВДНХ'}
  ]

@posts =
  [
    {title: 'На вина!'},
    {title: 'Yard'},
    {title: 'Maestrello'},
    {title: 'Кафе «Салют»'},
    {title: 'Кофемания'},
    {title: 'ABC Roasters'},
    {title: 'Сад «Эрмитаж»'}
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

def upload_fake_avatar
  uploader = AvatarUploader.new(User.new, :avatar)
  uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'lib/assets/avatars', '*')).sample))
  uploader
end

def upload_fake_collection_cover
  uploader = CollectionCoverUploader.new(Collection.new, :cover)
  uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'lib/assets/collection_covers', '*')).sample))
  uploader
end

def upload_fake_post_cover
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
