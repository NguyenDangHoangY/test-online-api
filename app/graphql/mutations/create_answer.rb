module Mutations
    class CreateAnswer < BaseMutation
        field :answer, Types::AnswerType, null: false

        argument :content, String, required: true
        argument :question_id, Integer, required: true

        def resolve(**arg)
            answer = Answer.new(arg)
            if answer.save
                {
                    answer: answer
                }
            end
        end
    end
end
  