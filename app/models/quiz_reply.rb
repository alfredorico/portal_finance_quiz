class QuizReply < ApplicationRecord
  belongs_to :quiz
  belongs_to :question
  # validates :selected_answers, presence: true, allow_blank: false
  validate :matching_question_id_with_answers_ids_selected, on: :update

  def answer_question_with_codes(codes)
    # codes contain a string containing answer codes. Eg: 'a,b' 'c' 'b,d'
    answer_ids = AnswerChoice.where(question: question, code: codes.split(',')).ids
    unless answer_ids.empty?
      self.selected_answers = answer_ids.join(',')
      save
    end
  end

  def selected_answers
    if read_attribute(:selected_answers).present?
      read_attribute(:selected_answers).try(:split,',').map{|e| e.to_i}
    else
     []
    end
  end


  protected
  def matching_question_id_with_answers_ids_selected
    unless (selected_answers - question_choices_ids).empty?
      errors.add(:selected_answers,"Selected answer ids are not valid")
    end
  end

  def question_choices_ids
    question.choice_ids
  end

end
