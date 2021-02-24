# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Marca.create(nombre: "Serranitas")
Marca.create(nombre: "Nestle")
Marca.create(nombre: "Studenko")
Marca.create(nombre: "Los Colonos")
Marca.create(nombre: "Coca Cola")

Rubro.create(nombre: "Lacteos", perecedero: true)
Rubro.create(nombre: "Carnicos", perecedero: true)
Rubro.create(nombre: "Bebidas", perecedero: true)
Rubro.create(nombre: "Galletitas", perecedero: false)
Rubro.create(nombre: "Snacks", perecedero: false)

Producto.create(nombre:"Criollitas", cant_minima:5, cant_actual:10, precio: 12000,activo: true, marca_id:1, rubro_id:1)
Producto.create(nombre:"Chocolatada", cant_minima:5, cant_actual:10, precio: 12000,activo: false, marca_id:2, rubro_id:2)
Producto.create(nombre:"Jamon", cant_minima:5, cant_actual:10, precio: 12000,activo: true, marca_id:3, rubro_id:3)
Producto.create(nombre:"Leche", cant_minima:5, cant_actual:10, precio: 12000,activo:false, marca_id:4, rubro_id:4)
Producto.create(nombre:"Gaseosa", cant_minima:5, cant_actual:10, precio: 12000,activo:true, marca_id:5, rubro_id:5)
