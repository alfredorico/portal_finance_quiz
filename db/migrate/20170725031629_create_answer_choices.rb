class CreateAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.string :code, size: 1
      t.text :answer, null: false
      t.boolean :correct, default: false
      t.references :question, null: false
      t.timestamps
    end
    add_foreign_key :answer_choices, :questions
  end
end
