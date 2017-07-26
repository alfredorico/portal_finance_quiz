class QuizInstance < Quiz

  def completed?
    quiz_replies.all?{ |r| r.selected_answers.present? }
  end

  def answered_incorrectly
    grade_quiz!
    quiz_replies.where(correct: false)
  end

  def grade_quiz!
    if completed?
      ActiveRecord::Base.transaction do
        self.total_score = 0
        self.correct_answers_counting = 0
        self.failed_answers_counting = 0
        quiz_replies.each do |reply|
          grade_question(reply) do |correct|
            reply.update_attribute(:correct, correct)
            if correct
              self.total_score +=  1
              self.correct_answers_counting += 1
            else
              self.failed_answers_counting += 1
            end
          end
        end
        save
      end
    end
  end

  private
  def grade_question(reply)
    yield reply.question.correct_response_ids.sort == reply.selected_answers.sort
  end

end
