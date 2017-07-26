class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes, id: false do |t|
      t.string :id, primary_key: true
      # Defaults to initial conditions of an empty quiz
      t.integer :total_score, default: 0
      t.integer :correct_answers_counting, default: 0
      t.boolean :terminated, default: false
      t.timestamps
    end

  end
end
