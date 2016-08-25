# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cat1 = Category.create(title: 'Appliances')
cat2 = Category.create(title: 'Furniture')
cat3 = Category.create(title: 'Lawn/Garden')
cat4 = Category.create(title: 'Tools')

Article.create(name: 'Honda', price: '4,400', description: 'runs like new', category_id: 1)
Article.create(name: 'toaster', price: '40', description: 'toasts like new', category_id: cat1.id)
Article.create(name: 'armchair', price: '400', description: 'feels like new', category_id: cat2.id)
Article.create(name: 'lawnmower', price: '1000', description: 'runs like new', category_id: cat3.id)
Article.create(name: 'power washer', price: '100', description: 'sprays like new', category_id: cat4.id)