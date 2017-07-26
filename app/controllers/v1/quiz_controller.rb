class V1::QuizController < ApplicationController
  before_action :set_question, only: [:with_choices]

  # The Quiz API must provide an Endpoint to create a new Instance of a Quiz.
  def create
    @quiz = QuizBuilder.instantiate
    if @quiz
      render status: :created
    else
      head(:expectation_failed)
    end
  rescue
    head(:internal_server_error)
  end

  # The Quiz API must provide an Endpoint to return an Instance of a Quiz by providing the Unique ID as an Input Argument
  def show

  end

  def grading
  end

  private
  def set_question
    @quiz = Quiz.find(params[:id])
  end

end
