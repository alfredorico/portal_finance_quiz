class V1::QuizReplyController < ApplicationController
  before_action :set_quiz_and_replies


  # The Quiz API must provide an Endpoint to update an Instance of a Quiz
  # curl -v -XPUT -H 'Accept: application/json' -H 'Content-Type: application/json' \
  # http://localhost:3000/v1/quiz/fc7dbc8d01/quiz_reply/6 \
  # -d '{"quiz_reply": { "selected_answers": "2,3" }}' | jq
  def update
    if @quiz_reply.update(quiz_reply_params)
      render json: @quiz_reply # Need to refactor
    else
      render json: @quiz_reply.errors, status: :unprocessable_entity
    end
  end

  private
  def set_quiz_and_replies
    @quiz = Quiz.find_by(id: params[:quiz_id])
    @quiz_reply = @quiz.quiz_replies.find(params[:id])
  end

  def quiz_reply_params
    params.require(:quiz_reply).permit(:selected_answers)
  end

end
