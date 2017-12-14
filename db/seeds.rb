# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ruby encoding: utf-8
# # Dojo 1 students
Dojo.first.students.create(first_name: "John", last_name: "Darwin", email: "darwin@gmail.com")
Dojo.first.students.create(first_name: "Jane", last_name: "Doe", email: "Doe@gmail.com")
Dojo.first.students.create(first_name: "Jennifer", last_name: "Scott", email: "Scott@gmail.com")
# # Dojo 2 students
Dojo.second.students.create(first_name: "Michael", last_name: "Smith", email: "smith@gmail.com")
Dojo.second.students.create(first_name: "Michelle", last_name: "Simpson", email: "Michelle@gmail.com")
Dojo.second.students.create(first_name: "Mitchell", last_name: "Scott", email: "scott@gmail.com")
# Dojo 3 StudentsStudent.a
Dojo.third.students.create(first_name: "Kyle", last_name: "Johnson", email: "John@gmail.com")
Dojo.third.students.create(first_name: "Kevin", last_name: "Jack", email: "jack@gmail.com")
Dojo.third.students.create(first_name: "Kurt", last_name: "Jade", email: "jade@gmail.com")