class QuizReply < ApplicationRecord
  belongs_to :quiz
  belongs_to :question
  # validates :selected_answers, presence: true, allow_blank: false
  validate :matching_question_id_with_answers_ids_selected

  protected
  def matching_question_id_with_answers_ids_selected
    if selected_answers.present?
      unless question.choices.pluck(:id).include?(self.selected_answers.split(','))
        errors.add(:selected_answers,"Your selected answer is not valid")        
      end
    else
      errors.add(:selected_answers,"You must choice one or more answers")
    end
  end
end
