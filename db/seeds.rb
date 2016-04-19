
User.delete_all
Category.delete_all
Shoe.delete_all


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
["jessica simpson", 120, 5, "Almond toe, stacked heel, side zip closure Interior lining, cushioned insole.", "boots.jpg", "black", "woman", "aldo", 38, "Boots" ],
["carla", 90, 5, "Almond toe, stacked heel, side zip closure Interior lining, cushioned insole.", "flats.jpg", "black", "woman", "aldo", 38, "Flats" ],
["carla", 90, 5, "Almond toe, stacked heel, side zip closure Interior lining, cushioned insole.", "pumps.jpg", "black", "woman", "aldo", 38, "Pumps" ],
["carla", 90, 5, "Almond toe, stacked heel, side zip closure Interior lining, cushioned insole.", "sandals.jpg", "black", "woman", "aldo", 38, "Sandals" ]
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

User.create( name: "carla", email: "frank@ex.com", password: "abcd1234" )
User.create( name: "glory", email: "glory@ex.com", password: "abcd1234" )
User.create( name: "jessica", email: "jessica@ex.com", password: "abcd1234" )
User.create( name: "michel", email: "michel@ex.com", password: "abcd1234" )
