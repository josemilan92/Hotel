git remote rm heroku# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.update( email: 'josealfredocontreras@gmail.com',role: 'Maneger')
#Event.create!(title:"Evento de ayer", start: Time.now - 1.day)
#Event.create!(title:"Evento de hoy", start: Time.now)
#Event.create!(title:"Evento de mañana", start: Time.now + 1.day)
#Event.create!(title:"Evento de la semana", start: Time.now - 3.day, end: Time.now + 3.day)
#Estado.create!(estados:1, nombre:'Reservado')
#Estado.create!(estados:2, nombre:'En uso')