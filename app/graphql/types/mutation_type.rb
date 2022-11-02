module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :update_user, mutation: Mutations::UpdateUser
    field :create_question, mutation: Mutations::CreateQuestion
    field :create_answer, mutation: Mutations::CreateAnswer
  end
end
