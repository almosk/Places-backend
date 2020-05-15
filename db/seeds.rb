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
    {title: 'Катя Обухова',  description: 'Копирайтер, живу в 🇷🇺 Москве',                     image: 'lib/assets/users/Катя Обухова.jpg',  email: 'obuhova@mail.com'   },
    {title: 'Женя Симонова', description: 'Travel, food, art',                        image: 'lib/assets/users/Женя Симонова.jpg', email: 'simonova@mail.com'  },
    {title: 'Кирилл Осипов', description: 'Собираю лучшие места, в которые хожу сам', image: 'lib/assets/users/Кирилл Осипов.jpg', email: 'osipov@mail.com'    },
    {title: 'Глеб Куценок',  description: 'Фотограф, исследую города',                image: 'lib/assets/users/Глеб Куценок.jpg',  email: 'cutsenok@mail.com'  },
  ]

@cities =
  [
    {title: 'Москва', identificator: [1]},
    {title: 'Самара', identificator: [2]},
    {title: 'Берлин', identificator: [3]},
    {title: 'Барселона', identificator: [4]},
  ]

@collections =
  [
    {title: '10 лучших кофеен Москвы', city: 1, image: 'lib/assets/collections/10кофеенмосквы.png',   identificator: 1,   description: 'Кофе бывает либо хорошим, либо плохим – третьего не дано. Поэтому не хочется лишний раз разочаровываться и переплачивать за быстрорастворимый напиток, который предлагают в ближайших забегаловках.' },
    {title: 'Гастропабы',              city: 1, image: 'lib/assets/collections/гастронобар.jpg',      identificator: 2,   description: 'Идея создания такого заведения пришла в голову англичанину — владельцу паба в 90-х годах.. В Великобритании принято вечерами после рабочего дня зайти пообщаться в заведение, пропустить рюмочку-другую за беседой.' },
    {title: 'Дома музеи',              city: 1, image: 'lib/assets/collections/домамузеи.jpg',        identificator: 3,   description: 'В Москве есть несколько мест, где время остановилось — квартиры-музеи писателей, художников, политиков и деятелей сцены хранят не только память о своих знаменитых хозяевах, но и интерьеры разных десятилетий ХХ века.' },
    {title: 'Китай город',             city: 1, image: 'lib/assets/collections/китайгород.jpeg',      identificator: 4,   description: 'Китай-город – очаровательный район с извилистыми улицами и величественными неоклассическими зданиями.' },
    {title: 'Веганские места',         city: 1, image: 'lib/assets/collections/веганместа.jpg',       identificator: 5,   description: 'Когда-то в вегетарианской Москве был один «Джаганнат», сейчас всё изменилось и в городе начинают появляться вегетарианские кафе не только без эзотерического уклона, но и с гастрономическим.' },
    {title: 'Любимые патрики',         city: 1, image: 'lib/assets/collections/патрики.jpeg',         identificator: 6,   description: 'Когда-нибудь, я туда перееду. А пока — любимые места' },
    {title: 'Конструктивизм в Москве', city: 1, image: 'lib/assets/collections/конструктивизм.jpg',   identificator: 7,   description: 'После сноса Таганской АТС и квартала на Погодинской в столице вновь разгорелись споры по поводу конструктивистского наследия, его недооцененности властью и горожанами.' },
    {title: 'Мой любимый маршрут',     city: 1, image: 'lib/assets/collections/любимыймаршрут.jpg',   identificator: 8,   description: '15 километров по летней Москве — что может быть лучше...' },
    {title: 'Крафотовое пиво',         city: 1, image: 'lib/assets/collections/пиво.jpeg',            identificator: 9,   description: 'Выпить чего-нибудь вкусненького и пообщаться с друзьями' },
    {title: 'Еврейская москва',        city: 1, image: 'lib/assets/collections/еврейскаямосква.jpg',  identificator: 10,  description: 'Собираю места в Москве, саязанные с еврейской культурой'},
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
    {title: 'Кооператив черный',                                                 collections: [1,4,5],image:'lib/assets/places/кооперативчерный.jpg'},
    {title: 'Розетка и кофе',                                                    collections: [1,4],  image:'lib/assets/places/розеткаикофе.png'},
    {title: 'Bloom n brew',                                                      collections: [1],    image:'lib/assets/places/bloomnbrew.jpg'},
    {title: 'Abc',                                                               collections: [1,4],  image:'lib/assets/places/abc.jpg'},
    {title: 'David b coffee',                                                    collections: [1,6],  image:'lib/assets/places/davidbcafe.jpg'},
    {title: 'Эрна',                                                              collections: [1],    image:'lib/assets/places/шуховскаябашня.jpeg'},
    {title: 'Аэроплан',                                                          collections: [1],    image:'lib/assets/places/аэроплан.jpeg'},
    {title: 'bro.we',                                                            collections: [1],    image:'lib/assets/places/browe.jpg'},
    {title: 'Прогресс',                                                          collections: [1],    image:'lib/assets/places/прогресс.jpeg'},
    {title: 'Салют',                                                             collections: [1],    image:'lib/assets/places/салют.jpg'},
    {title: 'Дом культур',                                                       collections: [2],    image:'lib/assets/places/домкультур.jpeg'},
    {title: 'Техникум',                                                          collections: [2],    image:'lib/assets/places/техникум.jpg'},
    {title: 'Nude',                                                              collections: [6,2],  image:'lib/assets/places/nude.jpg'},
    {title: 'Горыныч',                                                           collections: [2],    image:'lib/assets/places/горыныч.jpg'},
    {title: 'Remy kitchen',                                                      collections: [2],    image:'lib/assets/places/remy.jpg'},
    {title: 'blanc_',                                                            collections: [4,2],  image:'lib/assets/places/blanc.jpg'},
    {title: 'Flora no fauna',                                                    collections: [5,2],  image:'lib/assets/places/floranofauna.jpg'},
    {title: 'Северяне',                                                          collections: [2],    image:'lib/assets/places/северяне.jpg'},
    {title: 'Дом музей Шаляпина',                                                collections: [3],    image:'lib/assets/places/музейшаляпина.jpg'},
    {title: 'Дом музей Станиславского',                                          collections: [3],    image:'lib/assets/places/музейстаниславского.jpg'},
    {title: 'Дом музей Чехова',                                                  collections: [3],    image:'lib/assets/places/музейчехова.jpg'},
    {title: 'Дом музей Васнецова',                                               collections: [3],    image:'lib/assets/places/пер. васнецова13_1.jpg'},
    {title: 'Дом музей Марины Цветаевой',                                        collections: [3],    image:'lib/assets/places/музейцветаева.jpeg'},
    {title: 'Музей квартира Горького',                                           collections: [3],    image:'lib/assets/places/музейгорького.jpg'},
    {title: 'Московская хоральная синагога',                                     collections: [4],    image:'lib/assets/places/хоральнаясинагога.jpg'},
    {title: 'граунд солянка',                                                    collections: [4],    image:'lib/assets/places/граунд.jpeg'},
    {title: 'Хитровская площадь',                                                collections: [4],    image:'lib/assets/places/хитровская.jpg'},
    {title: 'Котомка',                                                           collections: [4,5],  image:'lib/assets/places/котомка.jpg'},
    {title: 'Евангелическо-лютеранский кафедральный собор Святых Петра и Павла', collections: [4],    image:'lib/assets/places/кафедральныйсобор_петраипавла.jpg'},
    {title: 'Яма',                                                               collections: [4],    image:'lib/assets/places/яма.jpg'},
    {title: 'Maestrello',                                                        collections: [4],    image:'lib/assets/places/maestrello.jpg'},
    {title: 'Ивановская горка',                                                  collections: [4],    image:'lib/assets/places/ивановскаягорка.jpg'},
    {title: 'Matcha way',                                                        collections: [5],    image:'lib/assets/places/matchaway.jpg'},
    {title: 'Fruits and veges',                                                  collections: [5],    image:'lib/assets/places/fruitsandvegges.jpeg'},
    {title: 'Fresh',                                                             collections: [5],    image:'lib/assets/places/fresh.jpg'},
    {title: 'Мох',                                                               collections: [5],    image:'lib/assets/places/мох.jpg'},
    {title: 'Театр «Практика»',                                                  collections: [6],    image:'lib/assets/places/театрпрактика.jpg'},
    {title: 'Музей Михаила Булгакова',                                           collections: [6,3],  image:'lib/assets/places/музейбулгакова.jpg'},
    {title: 'Дом Шехтеля',                                                       collections: [6,3],  image:'lib/assets/places/ДомШехтеля.jpeg'},
    {title: 'Апаковский трамвайный парк',                                        collections: [7],    image:'lib/assets/places/апаковский парк.jpg'},
    {title: 'Шуховская башня',                                                   collections: [7],    image:'lib/assets/places/шуховскаябашня.jpeg'},
    {title: 'Дом-коммуна РЖСКТ «Первое Замоскворецкое объединение»',             collections: [7],    image:'lib/assets/places/домкоммунаржскт.jpg'},
    {title: 'Хавско-Шаболовский жилмассив',                                      collections: [7],    image:'lib/assets/places/хавскощаболовскийжилмассив.jpg'},
    {title: 'Дом-коммуна Николаева',                                             collections: [7],    image:'lib/assets/places/дом коммуна николаева.jpg'},
    {title: 'les',                                                               collections: [8],    image:'lib/assets/places/лес.jpg'},
    {title: 'Третьяковка',                                                       collections: [8],    image:'lib/assets/places/новаятретьяковка.jpg'},
    {title: 'Музеон',                                                            collections: [8],    image:'lib/assets/places/музеон.jpg'},
    {title: 'Красный октябрь',                                                   collections: [8],    image:'lib/assets/places/красныйоктябрь.jpg'},
    {title: 'Пушкинский',                                                        collections: [8],    image:'lib/assets/places/пушкинский.jpg'},
    {title: 'Дом Кекушева на Остоженке',                                         collections: [8],    image:'lib/assets/places/домкекушева.jpg'},
    {title: 'Сосна и липа',                                                      collections: [9],    image:'lib/assets/places/сосна и липа.jpeg'},
    {title: 'Энтузиаст',                                                         collections: [9],    image:'lib/assets/places/шуховскаябашня.jpeg'},
    {title: 'Бирмаркет',                                                         collections: [9],    image:'lib/assets/places/бирмаркет.jpeg'},
    {title: 'Главпивмаг',                                                        collections: [9],    image:'lib/assets/places/главпивмаг.jpg'},
    {title: 'Абу гош',                                                           collections: [10],   image:'lib/assets/places/абу гош.jpg'},
    {title: 'Дизенгофф',                                                         collections: [10],   image:'lib/assets/places/дизенгоф.jpg'},
    {title: 'Mitzva bar',                                                        collections: [10],   image:'lib/assets/places/мицва.jpg'},
    {title: 'Еврейский музей ',                                                  collections: [10],   image:'lib/assets/places/еврейскиймузей.jpg'},
    {title: 'Синагога на большой бронной',                                       collections: [10],   image:'lib/assets/places/синагоганабольшойбронной.jpg'},
]

@descriptions = [
  'Почти официальный коворкинг всех фрилансеров Москвы и главная веранда продлившегося лета. Кофейная карта на зерне Camera Obscura разнообразна: от классических эспрессо (140 рублей), латте (280 рублей), капучино (180/280 рублей) до непривычных глазу пикколо (100 рублей) и бамбла (290 рублей). Меню завтраков команды Eggsellent предлагает яйца в шести видах приготовления, сладкие и несладкие вафли (320–420 рублей), пару видов каш (овсяная — 200 рублей, из булгура — 300 рублей) и, конечно же, сырники со сметанно-маковым соусом (280 рублей).',
  'Широкие окна в пол и светлый интерьер с претензией на скандинавский стиль — за полгода стремительно разрастающаяся сеть ABC Coffee Roasters открыла целых три новые точки: на «Третьяковской», «Лубянке» и на Центральном рынке. Уже в октябре в кофейне в Ордынском тупике запустят завтраки, а летние сезонные напитки сменятся пряными осенними во всех точках сети. Как всегда, в кофейнях можно выпить разнообразные виды альтернативы (безалкогольные коктейли, матча) и купить пачку зерна обжарки ABC.',
  'В закоулках Мясницкой появилось новое, окутанное тайной арт-пространство, интерьер которого отчаянно напоминает петербургский Civil. Создатели не раскрывают имя обжарщика, связь места с Mutabor и рецепты самодельных тоников; атмосферу завершают столики на одного. Хороший кофе пока представлен только классикой, но в скором времени расширится альтернативой. Небольшое меню из шести блюд включает лимонный йогурт с фисташками, мятой и базиликом (350 рублей), авокадо-тост (400 рублей), зеленый салат (400 рублей), сэндвич с темпе (450 рублей), суп из корня сельдерея (300 рублей) и скрэмбл-тофу (450 рублей).',
  'Небольшой зал в теплое время года дополняется уютным офисным двориком с вьющимися растениями. На отличном зерне варят классику (двойной эспрессо — 170 рублей, капучино — 270/300 рублей, раф — 320/350 рублей) черный (пуровер — 250 рублей, пресс — 250 рублей) и особой колд-брю-кофе с 15-часовой выдержкой (270–330 рублей). В заведениях омских обжарщиков ничего, кроме напитков, не готовят, но есть выпечка, салаты и десерты из холодильника.',
  'В калифорнийских интерьерах угощают веганскими сладостями, здоровыми завтраками и наливают неплохой кофе на зерне Rockets (американо — 200 рублей, капучино — 250/300 рублей, раф — 350 рублей). Место действительно оправдывает название: кроме кофе и кухни, тут собирают нежные букеты из сухоцветов, а также продают мультибрендовые товары Veter Shop (украшения, косметику для ухода, товары для дома и одежду).',
  'Одна из лучших кондитерских у дома досталась Патриаршим. В девять утра за свежими круассанами (240–350 рублей) и тарталетками (по 390 рублей), среди которых главным героем стала «Тропическая карамель», выстраивается очередь. Сладкое подкрепляют стаканчиком кофе, сваренным на зерне Laboratoria Coffee. Из классики (эспрессо — 250 рублей, капучино — 200/300 рублей) представлен весь список, из альтернативы пока только фильтр (150–200 рублей), но совсем скоро добавится Gina.',
  'Придется приложить немного усилий, чтобы найти эту кофейню в бизнес-центре на Моховой. Любимица офисных работников и первокурсников МГУ (студентам, кстати, 20%-ная скидка) снабжает посетителей отличным кофе на зерне West 4. Для маленькой точки меню достаточно широкое: классика (эспрессо — 140 рублей), альтернатива (фильтр — 160 рублей) и нестандарт вроде аффогато (200 рублей) и бамбл (260 рублей). Сами ребята готовят только каши, но в холодильнике обеденные сеты Zotman и выпечка пекарни «Франсуа», а после 17:30 на кулинарию действует скидка 30 %.',
  'Магазин zero waste, кофейню, винтаж и лекторий в одном пространстве. В нежных интерьерах варят кофе на зерне Rocket Roasters, готовят матча, авторские лимонады, а к напиткам можно взять веганские десерты, круассаны. Как плюс — завтрак можно заказать, купив зерно на развес в магазине, а бариста сварит из крупы кашу.'
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

# def upload_avatar(image)
#   uploader = AvatarUploader.new(User.new, :avatar)
#   uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'lib/assets/users', '*')).sample))
#   uploader
# end
#
# def upload_collection_cover
#   uploader = CollectionCoverUploader.new(Collection.new, :cover)
#   uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'lib/assets/collection_covers', '*')).sample))
#   uploader
# end
#
# def upload_post_cover
#   uploader = PostCoverUploader.new(Collection.new, :cover)
#   uploader.cache!(File.open(Dir.glob(File.join(Rails.root, 'lib/assets/post_covers', '*')).sample))
#   uploader
# end

# Create Users
def create_user(user)
  password = 'testtest'
  User.create(
    title: user[:title],
    description: user[:description],
    username: Translit.convert(user[:title], :english).gsub(/\s+/, "").downcase,
    email: user[:email],
    password: password,
    password_confirmation: password,
    avatar: File.open(user[:image])
  )
end

@users.each do |user|
  u = create_user(user)
  puts "User #{u.title}, #{u.username}, created"
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
    city_id: collection[:city],
    user_id: random_user_id,
    cover: File.open(collection[:image]),
    description: collection[:description],
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
    description: @descriptions.sample,
    place_id: random_place_id,
    user_id:  random_user_id,
    latitude: random_latitude,
    longitude: random_longitude,
    cover: File.open(post[:image])
  )
end

@posts.each do |post|
  p = create_post(post)

  post[:collections].each do |c|
    p.collections << Collection.find(c)
  end

  @collection = p.collections.sample

  # p.user = @collection.user
  Post.update(p.id, :user_id => @collection.user_id)

  puts "Post #{p.title}, id: #{p.id}"
  puts "     in #{p.collections.collect{|c| c.title}.join(', ')}"
  puts "     in #{@collection.title} by #{@collection.user.title}"
end
