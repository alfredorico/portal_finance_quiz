json.answered_incorrectly do
  json.array!  @quiz_instance.answered_incorrectly do |reply|
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

=begin
{
    "answered_incorrectly": [
        {
            "id": 5,
            "question": "De las siguiente obras pictóricas, ¿cuáles fueron pintadas por Leonardo da Vinci?",
            "answers": [
                {
                    "id": 17,
                    "answer": "La Gioconda o Mona Lisa"
                },
                {
                    "id": 18,
                    "answer": "San Juan Bautista"
                },
                {
                    "id": 19,
                    "answer": "La virgen de las rocas"
                },
                {
                    "id": 20,
                    "answer": "La cúpula de la Capilla Sixtina"
                }
            ],
            "your_choices": [
                [
                    18
                ]
            ]
        },
        {
            "id": 6,
            "question": "De las siguientes obras musicales, cuales fueron compuestas por Serguei Prokofiev",
            "answers": [
                {
                    "id": 21,
                    "answer": "El amor de las tres naranjas"
                },
                {
                    "id": 22,
                    "answer": "El pajaro de fuego"
                },
                {
                    "id": 23,
                    "answer": "Scherezade"
                },
                {
                    "id": 24,
                    "answer": "Romeo y Julieta"
                }
            ],
            "your_choices": [
                [
                    21,
                    23
                ]
            ]
        },
        {
            "id": 8,
            "question": "Cuales de las siguientes esculturas fueron elaboradas por Miguel Angel?",
            "answers": [
                {
                    "id": 29,
                    "answer": "La Piedad"
                },
                {
                    "id": 30,
                    "answer": "María Magdalena penitente"
                },
                {
                    "id": 31,
                    "answer": "Baco"
                },
                {
                    "id": 32,
                    "answer": "David"
                }
            ],
            "your_choices": [
                [
                    31,
                    32
                ]
            ]
        }
    ]
}
=end
