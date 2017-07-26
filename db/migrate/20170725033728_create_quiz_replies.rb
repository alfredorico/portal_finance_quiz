class CreateQuizReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_replies do |t|
      t.references :question, foreign_key: true
      t.text :selected_answers
      t.boolean :locked, default: false # Change to true when the questions has been answered.
                                        # This is for avoid to change the response
      t.timestamps
    end
    reversible do |dir|
      dir.up do
        execute <<-SQL
          ALTER TABLE quiz_replies ADD COLUMN quiz_id varchar REFERENCES quizzes(id) on update cascade on delete cascade;
        SQL
      end
    end

  end
end
