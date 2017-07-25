class V1::QuestionsController < ApplicationController
  before_action :set_question, only: [:with_choices]

  def index
  end

  def with_choices
  end

  private
  def set_question
    @question = Question.find(params[:id])
  end

end
