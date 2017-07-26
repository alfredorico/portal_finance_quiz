# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  q1 = Question.create(question: 'De las siguiente obras pictóricas, ¿cuáles fueron pintadas por Leonardo da Vinci?', order: 1)
  q1.choices_with_responses.create(answer: 'La Gioconda o Mona Lisa')
  q1.choices_with_responses.create(answer: 'San Juan Bautista', correct: true)
  q1.choices_with_responses.create(answer: 'La virgen de las rocas')
  q1.choices_with_responses.create(answer: 'La cúpula de la Capilla Sixtina', correct: true)

  q2 = Question.create(question: 'De las siguientes obras musicales, cuales fueron compuestas por Serguei Prokofiev', order: 2)
  q2.choices_with_responses.create(answer: 'El amor de las tres naranjas', correct: true)
  q2.choices_with_responses.create(answer: 'El pajaro de fuego')
  q2.choices_with_responses.create(answer: 'Scherezade')
  q2.choices_with_responses.create(answer: 'Romeo y Julieta', correct: true)

  q3 = Question.create(question: 'El instrumento musical que dominaba el compositor Frederic Chopin era:', order: 3)
  q3.choices_with_responses.create(answer: 'La flauta')
  q3.choices_with_responses.create(answer: 'El piano', correct: true)
  q3.choices_with_responses.create(answer: 'El violin')
  q3.choices_with_responses.create(answer: 'La trompeta')

  q4 = Question.create(question: 'Cuales de las siguientes esculturas fueron elaboradas por Miguel Angel?', order: 4)
  q4.choices_with_responses.create(answer: 'La Piedad', correct: true)
  q4.choices_with_responses.create(answer: 'María Magdalena penitente')
  q4.choices_with_responses.create(answer: 'Baco', correct: true)
  q4.choices_with_responses.create(answer: 'David', correct: true)
end
