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
      title: 'Alex',
      email: 'alex@mail.com'
    },
    {
      title: 'Ivan',
      email: 'ivan@mail.com'
    },
    {
      title: 'Sergey',
      email: 'sergey@mail.com'
    },
    {
      title: 'Inna',
      email: 'inna@mail.com'
    }
  ]

@cities =
  [
    {title: 'Moscow'},
    {title: 'Samara'},
    {title: 'Berlin'},
    {title: 'Barcelona'}
  ]

@collections =
  [
    {title: 'Coffe to go'},
    {title: 'Restoraunts'},
    {title: 'Cinemas'},
    {title: 'Souvenirs'},
    {title: 'Festivals'},
    {title: 'Museums'},
    {title: 'Shops'}
  ]

@places =
  [
    {title: 'Mustafa'},
    {title: 'Yard'},
    {title: 'Maestrello'},
    {title: 'U Svetlani'},
    {title: 'Fargo'},
    {title: 'Cotti'},
    {title: 'Spektor'}
  ]

@posts =
  [
    {title: 'Horoshiy restoran'},
    {title: 'Otdohnut'},
    {title: 'Letnaya veranda'},
    {title: 'Poest'},
    {title: 'Perekusit'},
    {title: 'S noutbukom'},
    {title: 'Posidet vdvoem'}
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


# Create Users
def create_user(user)
  password = 'testtest'
  User.create(
    title: user[:title],
    email: user[:email],
    password: password,
    password_confirmation: password
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
    user_id: random_user_id
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
    user_id:  random_user_id
  )
end

@posts.each do |post|
  p = create_post(post)

  1..5.times do
    p.collections << random_collection
  end

  puts "Post #{p.title} created"
end
