class Question < ApplicationRecord

  belongs_to :survey, inverse_of: :questions
  has_many :answer_data,class_name: 'AnswerDatum',inverse_of: :question
  accepts_nested_attributes_for :answer_data, allow_destroy: true

  enum data_type: [:dropdown, :text,:checkbox,:radiobutton]

end
