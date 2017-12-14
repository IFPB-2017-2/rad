namespace :geral do
  desc "Gerar valores falsos para alunos, disciplinas e inscrição"
  task seedtask: :environment do
    print "Inserindo Alunos..."
    100.times do |i|
      Student.create!(nome: Faker::Name.name, matricula: Faker::Number.digit.to_s)
    end
    puts "[OK]"

    print "Inserindo Disciplinas..."
    100.times do |i|
      Discipline.create!(descricao: Faker::Book.title, abreviacao: Faker::Book.genre)
    end
    puts "[OK]"

    print "Inserindo Inscrições..."
    100.times do |i|
      s = Subscription.new
      s.nota = 8
      s.cre = 7.56
      s.discipline = Discipline.all.sample
      s.semester = Semester.all.sample
      s.student = Student.all.sample
      s.save
    end

    puts "[OK]"

  end

end
