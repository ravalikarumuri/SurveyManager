class RemoveSurveyIdFromAnswerDatum < ActiveRecord::Migration[5.0]
  def change
    remove_column :answer_data, :survey_id, :integer
  end
end
