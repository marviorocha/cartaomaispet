class WelcomeMailer < ApplicationMailer
def welcome_send(user)
  @user = user
  mail to: user.email, subject: "Bem-vindo ao Cartão Mais Pet", from: "contato@cartoamaispet.com.br"
  
end

end
