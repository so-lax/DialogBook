# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
names = [ 'Mr. Teacher', 'Antonio Banderas', 'Cynthia Erivo', 'Scarlett Johansson', 'Jonathan Pryce', 'Florence Pugh',
'Yalitza Aparicio', 'Olivia Colman', 'Marina de Tavira', 'Adam Driver', 'Sam Elliott', 'Lady Gaga', 'Richard E. Grant',
'Regina King', 'Rami Malek', 'Mary J. Blige', 'Timothee Chalamet', 'Allison Janney', 'Daniel Kaluuya']

names.each_with_index {|name,i|
  uid = sprintf "user%03d", i
  User.create(username: uid, fullname: name, password: '123456', role: ((i == 0) ? 'teacher' : 'student'))
  Visit.create(user_id: 1, visitee: i)
}