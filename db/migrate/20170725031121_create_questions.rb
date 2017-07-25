class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :question, null: false
      t.integer :score, default: 1
      t.integer :order
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
