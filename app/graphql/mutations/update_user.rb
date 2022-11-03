module Mutations
    class UpdateUser < BaseMutation
      # TODO: define return fields
      # field :post, Types::PostType, null: false
  
      # TODO: define arguments
      # argument :name, String, required: true
  
      # TODO: define resolve method
      # def resolve(name:)
      #   { post: ... }
      # end
      
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
  