class Quiz < ApplicationRecord
  has_many :quiz_replies

  def completed?
    quiz_replies.all?{|r| r.selected_answers.present?}
  end
  
end
