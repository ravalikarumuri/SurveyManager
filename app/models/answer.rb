class Answer < ApplicationRecord
  belongs_to :survey
  belongs_to :user
  belongs_to :question
  belongs_to :answer_datum
end
