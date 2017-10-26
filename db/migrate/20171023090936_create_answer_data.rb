class CreateAnswerData < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_data do |t|
      t.string :data_value
      t.references :question, foreign_key: true
      t.references :survey, foreign_key: true

      t.timestamps
    end
  end
end
