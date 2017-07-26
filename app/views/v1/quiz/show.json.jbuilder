json.quiz_instance do
  json.id @quiz.id
  json.questions do
    json.array!  @quiz.quiz_replies do |reply|
      json.id reply.question.id
      json.question reply.question.question
      json.answers do
        json.array! reply.question.choices do |choice|
          json.id choice.id
          json.answer choice.answer
        end
      end
      json.your_choices reply.selected_answers.try(:split,',') # Answers are stored as a list of comma separated values
    end
  end
end

=begin
{
    "quiz_instance": {
        "id": "fc7dbc8d01",
        "questions": [
            {
                "id": 1,
                "question": "De las siguiente obras pictóricas, ¿cuáles fueron pintadas por Leonardo da Vinci?",
                "answers": [
                    {
                        "id": 1,
                        "answer": "La Gioconda o Mona Lisa"
                    },
                    {
                        "id": 2,
                        "answer": "San Juan Bautista"
                    },
                    {
                        "id": 3,
                        "answer": "La virgen de las rocas"
                    },
                    {
                        "id": 4,
                        "answer": "La cúpula de la Capilla Sixtina"
                    }
                ],
                "your_choices": null
            },
            {
                "id": 2,
                "question": "De las siguientes obras musicales, cuales fueron compuestas por Serguei Prokofiev",
                "answers": [
                    {
                        "id": 5,
                        "answer": "El amor de las tres naranjas"
                    },
                    {
                        "id": 6,
                        "answer": "El pajaro de fuego"
                    },
                    {
                        "id": 7,
                        "answer": "Scherezade"
                    },
                    {
                        "id": 8,
                        "answer": "Romeo y Julieta"
                    }
                ],
                "your_choices": [
                    "2",
                    "3"
                ]
            },
            {
                "id": 3,
                "question": "El instrumento musical que dominaba el compositor Frederic Chopin era:",
                "answers": [
                    {
                        "id": 9,
                        "answer": "La flauta"
                    },
                    {
                        "id": 10,
                        "answer": "El piano"
                    },
                    {
                        "id": 11,
                        "answer": "El violin"
                    },
                    {
                        "id": 12,
                        "answer": "La trompeta"
                    }
                ],
                "your_choices": null
            },
            {
                "id": 4,
                "question": "Cuales de las siguientes esculturas fueron elaboradas por Miguel Angel?",
                "answers": [
                    {
                        "id": 13,
                        "answer": "La Piedad"
                    },
                    {
                        "id": 14,
                        "answer": "María Magdalena penitente"
                    },
                    {
                        "id": 15,
                        "answer": "Baco"
                    },
                    {
                        "id": 16,
                        "answer": "David"
                    }
                ],
                "your_choices": null
            }
        ]
    }
}
=end
