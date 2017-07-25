class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.string :uniqueid
      t.integer :total_score
      t.integer :wrong_answers_counting
      t.boolean :terminated, default: false

      t.timestamps
    end
  end
end
