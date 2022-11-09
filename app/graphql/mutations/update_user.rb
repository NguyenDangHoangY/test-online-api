module Mutations
  class UpdateUser < BaseMutation
    field :user, Types::UserType, null: false

    argument :id, ID, required: true  
    argument :name, String, required: false
    argument :email, String, required: false
    argument :password, String, required: false
    argument :point, Float, required: false
    
    def resolve(id:, **arg)
      user = User.find(id)
      if user.update(arg)
        {
          user: user
        }
      end
    end
  end
end
