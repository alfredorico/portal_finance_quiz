class QuizReply < ApplicationRecord
  belongs_to :quiz
  belongs_to :question
  # validates :selected_answers, presence: true, allow_blank: false
  validate :matching_question_id_with_answers_ids_selected, on: :update

  protected
  def matching_question_id_with_answers_ids_selected
    unless (selected_answers - question_choices_ids).empty?
      errors.add(:selected_answers,"Selected answer ids are not valid")
    end
  end

  def question_choices_ids
    question.choice_ids
  end

  def selected_answers
    if read_attribute(:selected_answers).present?
      read_attribute(:selected_answers).try(:split,',').map{|e| e.to_i}
    else
     []
    end
  end

end
