class Question < ApplicationRecord
    has_many :answers, dependent: :destroy
    validates(:content, presence: true, length: {maximum: 200})
    validates(:point, presence: true)
    validates(:correctAnswer, presence: true)
    validates(:answer, presence: true, allow_nil:true)
end
