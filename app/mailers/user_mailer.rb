class UserMailer < ApplicationMailer
    default from: 'devgiack@protonmail.com'

    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 

      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'https://warm-shore-71821.herokuapp.com/' 

      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez les truffiéres de Saint-Martin !') 
    end
  end