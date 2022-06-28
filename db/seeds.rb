# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SalesmanInfo.destroy_all

SalesmanInfo.create([
    {
        name: "Mako Mori",
        qty_wire: 9900,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "South"
    },
    {
        name: "Raleigh Becket",
        qty_wire: 4900,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "South"
    },
    {
        name: "Stacker Pentecost",
        qty_wire: 15900,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "South"
    },
    {
        name: "Sasha Kaidanovsky",
        qty_wire: 5900,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "South"
    },
    {
        name: "Harry Potter",
        qty_wire: 9500,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "North"
    },
    {
        name: "Hermione Granger",
        qty_wire: 4500,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "North"
    },
    {
        name: "Ron Weasley",
        qty_wire: 15500,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "North"
    },
    {
        name: "Ginny Weasley",
        qty_wire: 5500,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "North"
    },
    {
        name: "Jethro Gibbs",
        qty_wire: 9300,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "East"
    },
    {
        name: "Timothy McGee",
        qty_wire: 4300,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "East"
    },
    {
        name: "Ziva David",
        qty_wire: 15300,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "East"
    },
    {
        name: "Tobias Fornell",
        qty_wire: 5300,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "East"
    },
    {
        name: "Tony Stark",
        qty_wire: 9000,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "West"
    },
    {
        name: "Luke Skywalker",
        qty_wire: 4000,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "West"
    },
    {
        name: "Leia Skywalker",
        qty_wire: 15000,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "West"
    },
    {
        name: "James Kirk",
        qty_wire: 5000,
        part_number: "14NO35",
        dollar_amount_sold: 0.13031,
        region: "West"
    }
])

p "created #{SalesmanInfo.count} Salesman_info"