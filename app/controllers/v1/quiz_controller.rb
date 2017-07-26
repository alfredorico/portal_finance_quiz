class V1::QuizController < ApplicationController
  before_action :set_question, except: [:create]

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

  # The Quiz API must provide an Endpoint to grade a Quiz.
  def grade
    @quiz_instance.grade_quiz!
    render json: @quiz_instance
  end

  def answered_incorrectly
  end

  private
  def set_question
    @quiz_instance = QuizInstance.find(params[:id])
  end

end
