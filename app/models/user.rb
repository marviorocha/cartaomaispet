class User < ApplicationRecord

  has_many :animals
  has_one  :petshop
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
# User Rules
 ROLES = %i[admin user store banned]

 after_create :welcome_send

  def welcome_send
    @user = User.last
    @user.create_petshop(title: 'Titulo de sua loja')
    WelcomeMailer.welcome_send(self).deliver
  end




end
