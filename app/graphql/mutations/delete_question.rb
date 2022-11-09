module Mutations
    class DeleteQuestion < BaseMutation
        field :errors, [String], null: false
        argument :id, ID, required: true  

        def resolve(id:)
            question = Question.find(id)
            question.destroy
            rescue ActiveRecord::RecordNotFound
                return { question: nil, errors: ['record not found']}
        end
    end
end