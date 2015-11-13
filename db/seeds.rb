# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CategoriaRec.create(nombre:"Desayuno")
CategoriaRec.create(nombre:"Comida")
CategoriaRec.create(nombre:"Cena")
CategoriaRec.create(nombre:"Snack")
Usuario.create(email:"admin@instafood.com",alias:"Administrador",nombre:"Juan Paco Pedro",apellido:"De la Mar",f_nac:"01-01-1900",email_confirmation:"admin@instafood.com",password_confirmation:"test",activo:true,password:"test")
