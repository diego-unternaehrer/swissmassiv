# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Partner.create(name: "Felder Sport AG", address: "Rothornstrasse 14A", zip_code: "6174", place: "Sörenberg", country: "Schweiz", link: "www.intersportfelder.ch")
Partner.create(name: "Hofherr Skiverleih", address: "Berwang 46", zip_code: "6622", place: "Berwang", country: "Österreich", link: "www.sport-hofherr.at")
Event.create(date: Date.new(2020,10,3), place: "Sörenberg (Rossweid)", country: "Schweiz", cancelled: false)
Event.create(date: Date.new(2020,11,6), place: "Zermatt", country: "Schweiz", cancelled: false)
Event.create(date: Date.new(2020,12,1), place: "Damüls", country: "Österreich", cancelled: false)

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
