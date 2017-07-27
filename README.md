# README

For installation just run:
rake db:migrate
rake db:seed


**Enpoints:**

Build a new quiz
*POST  /v1/quiz*

Get builded quiz
*GET   /v1/quiz/:id*

Answer a question
*PATCH /v1/quiz/:quiz_id/quiz_reply/:id*
*PUT   /v1/quiz/:quiz_id/quiz_reply/:id*

Grade a quiz
*GET   /v1/quiz/:id/grade*

Get incorrect answers
*GET   /v1/quiz/:id/answered_incorrectly*

List all questions with all choices
*GET   /v1/questions*

List choices for a especific question
*GET   /v1/questions/:id/with_choices*

List choices indicating correct ones for a especific question
*GET   /v1/questions/:id/with_correctly_answered_choices*
