class Question < ApplicationRecord
  has_many :choices, -> {select("id, answer, question_id")}, class_name: 'AnswerChoice'
  has_many :choices_with_responses, class_name: 'AnswerChoice'
  has_many :correct_responses, -> {where(correct: true)}, class_name: 'AnswerChoice'
  scope :actives, -> { where(active: true).order(:order) }
end
