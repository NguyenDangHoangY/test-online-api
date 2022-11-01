module Mutations
    class CreateQuestion < BaseMutation
      field :question, Types::QuestionType, null: false

      argument :content, String, required: true
      argument :correctAnswer, Integer, required: true
      argument :point, Float, required: true
      argument :answer, Integer, required: false

      def resolve(**arg)
        question = Question.new(arg)
        if question.save
            {
                question: question
            }
        end
      end
    end
  end
  