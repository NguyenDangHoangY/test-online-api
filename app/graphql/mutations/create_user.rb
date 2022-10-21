module Mutations
  class CreateUser < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    
    field :user, Types::UserType, null: false

    argument :name, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true

    def resolve(**arg)
      user = User.new(arg)
      if user.save
        {
          user: user
        }
      end
    end
  end
end
