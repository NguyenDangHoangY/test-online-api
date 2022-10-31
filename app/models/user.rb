class User < ApplicationRecord
        # Include default devise modules.
        devise :database_authenticatable, :registerable
        include DeviseTokenAuth::Concerns::User
        validates(:name, presence: true, length: {maximum: 50})
        VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
        validates(:email, presence: true, length: {maximum: 250}, format: {with: VALID_EMAIL_REGEX}, uniqueness: true)
        validates(:password, presence: true, length: {minimum:6}, allow_nil:true)
end
