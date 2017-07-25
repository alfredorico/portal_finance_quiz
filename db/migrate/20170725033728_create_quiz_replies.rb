class CreateQuizReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_replies do |t|
      t.references :quiz, foreign_key: true
      t.references :question, foreign_key: true
      t.text :selected_answers
      t.boolean :locked, default: false # Change to true when the questions has been answered.
                                        # This is for avoid to change the response
      t.timestamps
    end
  end
end
