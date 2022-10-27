class Users::RegistrationsController < DeviseTokenAuth::RegistrationsController
    def sign_up_params
        params.permit :email, :password, :password_confirmation, :name, :point
    end
end