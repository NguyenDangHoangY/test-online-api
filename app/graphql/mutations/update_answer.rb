module Mutations
    class UpdateAnswer < BaseMutation
        field :answer, Types::AnswerType, null: false

        argument :id, ID, required: true
        argument :content, String, required: false
        argument :question_id, Integer, required: false

        def resolve(id:, **arg)
            answer = Answer.find(id)
            if answer.update(arg)
                {
                    answer: answer
                }
            end
        end
    end
end
  