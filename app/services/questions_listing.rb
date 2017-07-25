class QuestionsListing
  def self.list_questions_and_choices
    Question.includes(:choices)
  end
  def self.list_questions_and_choices_with_responses
    Question.includes(:choices_with_responses)
  end
end
