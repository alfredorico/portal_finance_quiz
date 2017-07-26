# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do
  Quiz.destroy_all
  Question.destroy_all
  q1 = Question.create(question: 'De las siguiente obras pictóricas, ¿cuáles fueron pintadas por Leonardo da Vinci?', order: 1)
  q1.choices_with_responses.create(code: 'a', answer: 'La Gioconda o Mona Lisa')
  q1.choices_with_responses.create(code: 'b', answer: 'San Juan Bautista', correct: true)
  q1.choices_with_responses.create(code: 'c', answer: 'La virgen de las rocas')
  q1.choices_with_responses.create(code: 'd', answer: 'La cúpula de la Capilla Sixtina', correct: true)

  q2 = Question.create(question: 'De las siguientes obras musicales, cuales fueron compuestas por Serguei Prokofiev', order: 2)
  q2.choices_with_responses.create(code: 'a', answer: 'El amor de las tres naranjas', correct: true)
  q2.choices_with_responses.create(code: 'b', answer: 'El pajaro de fuego')
  q2.choices_with_responses.create(code: 'c', answer: 'Scherezade')
  q2.choices_with_responses.create(code: 'd', answer: 'Romeo y Julieta', correct: true)

  q3 = Question.create(question: 'El instrumento musical que dominaba el compositor Frederic Chopin era:', order: 3)
  q3.choices_with_responses.create(code: 'a', answer: 'La flauta')
  q3.choices_with_responses.create(code: 'b', answer: 'El piano', correct: true)
  q3.choices_with_responses.create(code: 'c', answer: 'El violin')
  q3.choices_with_responses.create(code: 'd', answer: 'La trompeta')

  q4 = Question.create(question: 'Cuales de las siguientes esculturas fueron elaboradas por Miguel Angel?', order: 4)
  q4.choices_with_responses.create(code: 'a', answer: 'La Piedad', correct: true)
  q4.choices_with_responses.create(code: 'b', answer: 'María Magdalena penitente')
  q4.choices_with_responses.create(code: 'c', answer: 'Baco', correct: true)
  q4.choices_with_responses.create(code: 'd', answer: 'David', correct: true)

  #Build a quiz
  quiz = QuizBuilder.instantiate
  # De las siguiente obras pictóricas, ¿cuáles fueron pintadas por Leonardo da Vinci?
  quiz.quiz_replies[0].answer_question_with_codes('b,d')
  quiz.quiz_replies[1].answer_question_with_codes('a,d')
  quiz.quiz_replies[2].answer_question_with_codes('b')
  quiz.quiz_replies[3].answer_question_with_codes('c,d')



end
