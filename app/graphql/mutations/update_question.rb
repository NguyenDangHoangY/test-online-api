module Mutations
    class UpdateQuestion < BaseMutation
        field :question, Types::QuestionType, null: false

        argument :id, ID, required: true  
        argument :content, String, required: false
        argument :correctAnswer, Integer, required: false
        argument :point, Float, required: false
        argument :answer, Integer, required: false

        def resolve(id:, **arg)
            question = Question.find(id)
            if question.update(arg)
                {
                    question: question
                }
            end
        end
    end
end