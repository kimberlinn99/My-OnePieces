# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do 
  one_piece = Onepiece.create({
    character: Faker::JapaneseMedia::OnePiece.character,    #=> "Monkey D. Luffy"
    sea: Faker::JapaneseMedia::OnePiece.sea,                #=> "East Blue"
    island: Faker::JapaneseMedia::OnePiece.island,          #=> "Laftel"
    location: Faker::JapaneseMedia::OnePiece.location,      #=> "Foosha Village"
    quote: Faker::JapaneseMedia::OnePiece.quote,            #=> "ONE PIECE IS REAL!"
    akuma_no_mi: Faker::JapaneseMedia::OnePiece.akuma_no_mi #=> "Gomu Gomu no Mi"
  })
end
