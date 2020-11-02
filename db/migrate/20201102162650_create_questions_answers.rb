class CreateQuestionsAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :questions_answers do |t|
      t.text :value
      t.references :answer, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
