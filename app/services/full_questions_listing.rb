class FullQuestionsListing
  def self.all
    Question.includes(:choices)
  end
end
