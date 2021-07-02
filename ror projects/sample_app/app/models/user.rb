# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  remember_token  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email           (email) UNIQUE
#  index_users_on_remember_token  (remember_token)
#
class User < ApplicationRecord

	#attr_accessor :name, :email, :password, :password_confirmation
	has_secure_password
	before_save {|user| user.email=email.downcase }
	before_save :create_remember_token

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :name,presence: true,length: { maximum:50 }
	validates :email,presence: true,format:{ with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
	validates :password,presence: true,length: { minimum: 6 }
	validates :password_confirmation, presence: true

	private
		def create_remember_token
			self.remember_token = SecureRandom.urlsafe_base64
		end
end