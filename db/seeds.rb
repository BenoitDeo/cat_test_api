# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = Cat.create([
    { name: 'Henry', colour: 'brown', sex: 'male', dob: '21/10/2017', favourite_food: 'salmon'},
    { name: 'Fritz', colour: 'black and white', sex: 'male', dob: '02/03/2014', favourite_food: 'Tuna'},
    { name: 'Felix', colour: 'black', sex: 'male', dob: '01/01/2001', favourite_food: 'Lobster'},
    ])