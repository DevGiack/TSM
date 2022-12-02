# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all

password = '123456'
types = ["home","work","perso","secondaire","vacances"]
states = ["Ain","Aisne","Allier","Alpes","Hautes-Alpes","Alpes-Maritimes","Ardêche","Ardennes","Ariège","Aube","Aude","Aveyron","Bouches-du-Rhône","Calvados","Cantal","Charente","Charente-Maritime","Cher","Corrèze","Corse-du-Sud","Haute-Corse","Côte-d'Or","Côtes","Creuse","Dordogne","Doubs","Drôme","Eure","Eure-et-Loir","Finistère","Gard","Haute-Garonne","Gers","Gironde","Hérault","Île-et-Vilaine","Indre","Indre-et-Loire","Isère","Jura","Landes","Loir-et-Cher","Loire","Haute-Loire","Loire-Atlantique","Loiret","Lot","Lot-et-Garonne","Lozère","Maine-et-Loire","Manche","Marne","Haute-Marne","Mayenne","Meurthe-et-Moselle","Meuse","Morbihan","Moselle","Nièvre","Nord","Oise","Orne","Pas-de-Calais","Puy-de-Dôme","Pyrénées-Atlantiques","Hautes-Pyrénées","Pyrénées-Orientales","Bas-Rhin","Haut-Rhin","Rhône","Haute-Saône","Saône-et-Loire","Sarthe","Savoie","Haute-Savoie","Paris","Seine-Maritime","Seine-et-Marne","Yvelines","Deux-Sèvres","Somme","Tarn","Tarn-et-Garonne","Var","Vaucluse","Vendée","Vienne","Haute-Vienne","Vosges","Yonne","Territoire-de-Belfort","Essonne","Hauts-de-Seine","Seine-Saint-Denis","Val-de-Marne","Val-d'Oise"]

5.times do |t|

    password = '123456'
    encrypted = User.new(:password => password).encrypted_password

    user = User.new(
        email: Faker::Internet.email, 
        encrypted_password: encrypted,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        phone: Faker::Number.between(from: 1000000000, to: 9999999999).to_s,
        last_login: Time.now
        ).save!(validate: false)

    2.times do |t|
        dep = states.sample
        address = UserAddress.new(
            address_number: Faker::Number.between(from: 1, to: 150),
            address_street: Faker::Address.street_name,
            address_city: Faker::Address.city,
            address_zip: (format('%02d',states.index(dep)).to_s + Faker::Number.between(from: 10, to: 99).to_s + "0").to_i,
            address_state: dep,
            address_country: "FRANCE",
            address_type: types.sample,
            user: User.last
        ).save!(validate: false)
    end

end

2.times do |t|
    category = ProductCategory.new(name: Faker::Food.ethnic_category).save!(validate: false)
end

3.times do |t|
    product = Product.new(
        name: Faker::Food.dish,
        description: Faker::Lorem.sentences(number: 7).join(" "),
        unity: "Gr",
        price:  Faker::Number.decimal(l_digits: 2),
        product_category_id: ProductCategory.all.sample.id
    ).save!(validate: false)
end
x = 1
3.times do |t|
    img_name = "truffe_" + x.to_s + '.jpeg'
    product = Product.new(
        name: Faker::Food.dish,
        description: Faker::Lorem.sentences(number: 7).join(" "),
        unity: "Gr",
        price:  Faker::Number.decimal(l_digits: 2),
        product_category_id: ProductCategory.all.sample.id,
        is_highlighted: true,
        product_image: img_name

    ).save!(validate: false)
    x += 1
end


password = 'admin123'
encrypted = User.new(:password => password).encrypted_password

user = User.new(
    email: "admin@admin.com", 
    encrypted_password: encrypted,
    first_name: "admin",
    last_name: "admin",
    phone: Faker::Number.between(from: 1000000000, to: 9999999999).to_s,
    last_login: Time.now,
    is_admin: true
    ).save!(validate: false)
    
    admin = AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password').save!(validate: false)