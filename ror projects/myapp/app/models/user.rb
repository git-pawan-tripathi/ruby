class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format:{ with: URI::MailTo::EMAIL_REGEXP,message: "email must in the correct format"}
end
