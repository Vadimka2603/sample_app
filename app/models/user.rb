class User < ActiveRecord::Base
	before_save { self.email = email.downcase }					#Нижний регистр для адресса преед сохранением
	validates :name,  presence: true, length: { maximum: 50 }	#Проверяем, чтобы было не пусто и не более 50 знаков
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i    #Разрешенные символы для адресса
	validates :email, presence: true, length: { maximum: 255 }, #не пусто и длина
	format: { with: VALID_EMAIL_REGEX }, 
	uniqueness: { case_sensitive: false }						#Регистр и уникальность
	has_secure_password
	validates :password, length: { minimum: 6 }
end