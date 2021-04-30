# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

College.create!([{name: "University of Western Ontario"}, {name: "University of Toronto"}])

User.create!([{first_name: "Luke", last_name: "Sky", phone_number: "12222222222", college_number: 1},{first_name: "Lando", last_name: "Nor", phone_number: "2222222222", college_number: 1},{first_name: "Jarada", last_name: "Hutt", phone_number: "2222222222", college_number: 2}])


Exam.create!([{college_id: 1},{college_id: 2}])