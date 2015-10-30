# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CategoriaRec.create(nombre:"Comida China")
CategoriaRec.create(nombre:"Comida Mexicana")
CategoriaRec.create(nombre:"Comida Francesa")
CategoriaRec.create(nombre:"Comida Tailandesa")

CategoriaIng.create(nombre:"Carnes")
CategoriaIng.create(nombre:"Aves")
CategoriaIng.create(nombre:"Frutas")
CategoriaIng.create(nombre:"Verduras")

RecetaIng.create(receta_id:2,ingrediente_id:1,cantidad:2,unidad:"Kg")
RecetaIng.create(receta_id:2,ingrediente_id:2,cantidad:2,unidad:"Kg")
RecetaIng.create(receta_id:2,ingrediente_id:3,cantidad:2,unidad:"Kg")
RecetaIng.create(receta_id:3,ingrediente_id:4,cantidad:2,unidad:"Kg")
RecetaIng.create(receta_id:2,ingrediente_id:5,cantidad:2,unidad:"Kg")