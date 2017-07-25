module QuizBuilder
  extend self
  def instantiate
    ActiveRecord::Base.transaction do
      @quiz = Quiz.create(uniqueid: generate_uniqueid)
      Question.actives.each do |question|
        QuizReply.create(quiz: @quiz, question: question)
      end
      @quiz
    end
  end

  def generate_uniqueid
    SecureRandom.hex(5)
  end
end
