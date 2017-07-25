class QuizInstance

  def initialize(attributes)
    @quiz = Quiz.find_by(uniqueid: attributes.fetch(:uniqueid)) #it requires an uniqueid
    raise "Non existent uniqueid #{uniqueid}" unless @quiz #Early boom!..
  end

  def completed?
    @quiz.quiz_replies.all?{|r| r.selected_answers.present?}
  end

  def method_name

  end

end
