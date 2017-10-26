class AnswerDatum < ApplicationRecord

  belongs_to :question,inverse_of: :answer_data
  has_one :answer,inverse_of: :answer_data

end
