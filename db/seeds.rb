# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Créer 5 cours qui ont chacun 3 cours
5.times do |index|
  wof = Cour.create(title: "Cour n#{index + 1}", description: "descriptionn#{index + 1}")
  3.times do |index_lesson|
    Lesson.create(title: "Lesson#{index_lesson +1}", content: "Cours n#{index + 1}, lesson#{index_lesson + 1}", cour_id: wof.id)
  end 
end

