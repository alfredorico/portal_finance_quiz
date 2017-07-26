module QuizBuilder
  extend self
  def instantiate
    #ActiveRecord::Base.transaction do
    #  @quiz = Quiz.create(id: generate_uniqueid)
    #  Question.actives.each do |question|
    #    QuizReply.create(quiz_id: @quiz.id, question: question) # For each question, create a placeholder reply that will get
    #                                                            # answered on client side
    #  end
    #  @quiz
    #end
    nil
  end

  def generate_uniqueid
    SecureRandom.hex(5)
  end

end
