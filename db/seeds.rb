
User.delete_all
CategoriesShoes.delete_all
Category.delete_all
Shoe.delete_all


User.create( name: "carla", email: "frank@ex.com", password: "abcd1234" )
User.create( name: "glory", email: "glory@ex.com", password: "abcd1234" )
User.create( name: "jessica", email: "jessica@ex.com", password: "abcd1234" )
User.create( name: "michel", email: "michel@ex.com", password: "abcd1234" )


categories = [
"Booties",
"Boots",
"Pumps",
"Sandals",
"Flats",
"Sneakers",
"Comforts",
"Slippers",
"Rain&Cold Weather"
]
categories.each do |category_name|
   category = Category.create( name: category_name )
end


shoes = [
["Jessica Simpson", 120, 5, "Almond toe, stacked heel, side zip closure Interior lining, cushioned insole.", "boots.jpg", "black", "woman", "aldo", 38, "Boots" ],
["Carla", 90, 5, "Almond toe, stacked heel, side zip closure Interior lining, cushioned insole.", "flats.jpg", "black", "woman", "aldo", 38, "Flats" ],
["Carla", 90, 5, "Almond toe, stacked heel, side zip closure Interior lining, cushioned insole.", "pumps.jpg", "black", "woman", "aldo", 38, "Pumps" ],
["Carla", 90, 5, "Almond toe, stacked heel, side zip closure Interior lining, cushioned insole.", "sandals.jpg", "black", "woman", "aldo", 38, "Sandals" ],
["Panda Peddlers", 20, 10, "Ever want to walk on a panda?", "pandaslippers.jpg", "black","unisex", "Plushmasters", 40, "Slippers"],
["Turd", 20, 5, "Like stepping in poo!", "slippers.png", "brown","unisex", "Plushmasters", 42, "Slippers"]
]


shoes.each do | name, price, stock, description, image, color, gender, brand, size, categories|
  shoe = Shoe.create( name: name, price: price, stock: stock, description: description, image: image, color: color, gender: gender, brand: brand, size: size )
  categories.split(", ").each do |category_name|
    if category = Category.find_by( name: category_name)
    else
      category = Category.create( name: category_name)
    end
    CategoriesShoes.create( shoe: shoe, category: category )
  end
end

shoes = [
  {
    name: "Jardin Heel",
    price: 196,
    description: "Made in LA! This lovely vintage inspired sandal is sure to take you from the office to dinner and out on the weekend. Its flared, chunky heel is sleek, comfortable, and best of all perfect for outdoor weddings (no sinkage here!). RUNS TRUE TO SIZE. If you're between sizes, round up. heel height 2.25",
    stock: 14,
    image: "jardinheelwhite.jpg",
    color: "white",
    gender: "woman",
    category: "Sandals"
  },
  {
    name: "Jardin Heel",
    price: 196,
    description: "Made in LA! This lovely vintage inspired sandal is sure to take you from the office to dinner and out on the weekend. Its flared, chunky heel is sleek, comfortable, and best of all perfect for outdoor weddings (no sinkage here!). RUNS TRUE TO SIZE. If you're between sizes, round up. heel height 2.25",
    stock: 1,
    image: "jardinheelred.jpg",
    color: "red",
    gender: "woman",
    category: "Sandals"
  },
  {
    name: "Jardin Heel",
    price: 196,
    description: "Made in LA! This lovely vintage inspired sandal is sure to take you from the office to dinner and out on the weekend. Its flared, chunky heel is sleek, comfortable, and best of all perfect for outdoor weddings (no sinkage here!). RUNS TRUE TO SIZE. If you're between sizes, round up. heel height 2.25",
    stock: 1,
    image: "jardinheelblue.jpg",
    color: "blue",
    gender: "woman",
    category: "Sandals"
  },
  {
    name: "Jardin Heel",
    price: 196,
    description: "Made in LA! This lovely vintage inspired sandal is sure to take you from the office to dinner and out on the weekend. Its flared, chunky heel is sleek, comfortable, and best of all perfect for outdoor weddings (no sinkage here!). RUNS TRUE TO SIZE. If you're between sizes, round up. heel height 2.25",
    stock: 10,
    image: "jardinheelblack.jpg",
    color: "white",
    gender: "woman",
    category: "Sandals"
  },
  {
    name: "Delicacy Black",
    price: 250,
    description: "These edgy slingback heels deserve a hot outfit and a night on the town!

Features a peep toe black striped upper
Single sole, stiletto heel and velcro slingback ankle closure
Man made materials.

Approximate heel height 5 inches",
    stock: 10,
    image: "Delicacy02_BLACK_1.jpg",
    color: "black",
    gender: "woman",
    category: "Pumps"
  },
  {
    name: "Giselle",
    price: 500,
    description: "These edgy slingback heels deserve a hot outfit and a night on the town!

Features a peep toe black striped upper
Single sole, stiletto heel and velcro slingback ankle closure
Man made materials.

Approximate heel height 5 inches",
    stock: 600,
    image: "Giselle09_Navy_Black01.jpg",
    color: "black",
    gender: "woman",
    category: "Pumps"
  },
  {
    name: "Rand23",
    price: 500,
    description: "These edgy slingback heels deserve a hot outfit and a night on the town!

Features a peep toe black striped upper
Single sole, stiletto heel and velcro slingback ankle closure
Man made materials.

Approximate heel height 5 inches",
    stock: 10,
    image: "Rand23_Black_Multi01.jpg",
    color: "black",
    gender: "woman",
    category: "Pumps"
  },
  {
    name: "Rand23 Camel",
    price: 500,
    description: "These edgy slingback heels deserve a hot outfit and a night on the town!

Features a peep toe black striped upper
Single sole, stiletto heel and velcro slingback ankle closure
Man made materials.

Approximate heel height 5 inches",
    stock: 10,
    image: "Rand23_Camel_Leopard01.jpg.jpg",
    color: "leopard",
    gender: "woman",
    category: "Pumps"
  },
  {
    name: "Vocita",
    price: 250,
    description: "These edgy slingback heels deserve a hot outfit and a night on the town!

Features a peep toe black striped upper
Single sole, stiletto heel and velcro slingback ankle closure
Man made materials.

Approximate heel height 5 inches",
    stock: 10,
    image: "Vocita_Brown_Beige_pink_0.jpg",
    color: "beige",
    gender: "woman",
    category: "Pumps"
  }
]


shoes.each do | shoe |
  newshoe = Shoe.create( name: shoe[:name], price: shoe[:price], stock: shoe[:stock], description: shoe[:description], image: shoe[:image], color: shoe[:color], gender: shoe[:gender], brand: shoe[:brand], size: shoe[:size] )
  shoe[:category].split(", ").each do |category_name|
    if category = Category.find_by( name: category_name)
    else
      category = Category.create( name: category_name)
    end
    CategoriesShoes.create( shoe: newshoe, category: category )
  end
end
