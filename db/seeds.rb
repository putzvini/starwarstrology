# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# name, short_name, full_name, color
characters = [
  ['darth_vader', 'vader', 'darth vader', '#B9534B'],
  ['yoda', 'yoda', 'master yoda', '#A3D775'],
  ['leia_organa', 'leia', 'princess leia', '#B08F7A'],
  ['luke_skywalker', 'luke', 'luke skywalker', '#DB675E'],
  ['han_solo', 'han', 'han solo', '#84693B'],
  ['chewbacca', 'chewie', 'chewbacca', '#985E71'],
  ['c_3po', 'c-3po', 'c-3po', '#ED860B'],
  ['obi_wan_kenobi', 'obi', 'obi wan knobi', '#594C69'],
  ['jabba', 'jabba', 'jabba the hutt', "#FFE699"]
]

puts 'creating characters'

characters.each_with_index do |c, i|
  Horoscope.create!(
    name: c[0],
    short_name: c[1],
    full_name: c[2],
    color: c[3]
  )
  puts "character #{i+1} created"
end
