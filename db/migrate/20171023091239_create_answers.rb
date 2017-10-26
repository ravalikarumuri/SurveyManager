class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.references :survey, foreign_key: true
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.references :answer_datum, foreign_key: true

      t.timestamps
    end
  end
end
