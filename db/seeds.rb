# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



student1 = Student.create(first_name: "Charlie", last_name: "Kelly")
student2 = Student.create(first_name: "Mantis", last_name: "Toboggan")

class1 = SchoolClass.create(title: "Ruby 101", room_number: 101)
class2 = SchoolClass.create(title: "Rails Magic 201", room_number: 1411)
