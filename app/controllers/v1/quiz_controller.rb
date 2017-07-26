class V1::QuizController < ApplicationController
  before_action :set_question, only: [:with_choices]

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

  def show
    
  end

  def grading
  end

  private
  def set_question
    @quiz = Quiz.find(params[:id])
  end

end
