# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


print "Inserindo Semestres..."
for i in 2010 .. 2017
  for j in 1 .. 2
    Semester.create!(ano: i, periodo: j)
  end
end
puts "[OK]"


#A documentação recomenda o uso do ! no create quando fizer isso através do seed.rb
