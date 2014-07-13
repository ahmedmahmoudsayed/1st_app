class User < ActiveRecord::Base
	validates :name, presence:true, length: {maximum: 40}
	VALID_EMAIL_REGEX =/\A[\w+\-.]+@[\w+\-.]+\.[a-z]+\z/i 

	validates :email, presence:true, format: {with:VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
	validates :password, presence:true, length: {maximum: 8}
	validates :password_confirmation, presence:true


end
