# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Salesman_info.destroy_all

Salesman_info.create!([
    {
        name: "Mako Mori",
        qty_wire: 9000,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "South"
    },
    {
        name: "Raleigh Becket",
        qty_wire: 4000,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "South"
    },
    {
        name: "Stacker Pentecost",
        qty_wire: 15000,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "South"
    },
    {
        name: "Sasha Kaidanovsky",
        qty_wire: 5000,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "South"
    }
])

p "created #{Salesman_info.count} Salesman_info"