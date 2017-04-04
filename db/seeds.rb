# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

duckspeak = Duckspeak.create(name: "stoked")
whistle = duckspeak.whistles.create(singular_name: "celebroty")
quacks = %w[wakwak waddlewaddle dadwaddle]
quacks.each do |quack|
  whistle.quacks.create(content: quack)
end
