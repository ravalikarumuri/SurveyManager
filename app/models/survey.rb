class Survey < ApplicationRecord

  has_many :questions, inverse_of: :survey
  accepts_nested_attributes_for :questions, allow_destroy: true
  has_many :answer_data, inverse_of: :survey
  has_many :answers, inverse_of: :survey

end
