class Answer < ApplicationRecord
  validates :answer_description, presence: true, length: { minimum: 50 }
  belongs_to :question
end
