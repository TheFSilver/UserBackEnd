# On definit les methodes et les actions de nos pages
class UsersController < ApplicationController
  def new
  end

  def new_post
    puts params
    user = User.new
    user.username = params["username"]
    user.bio = params["bio"]
    user.save
    
    # Si un pseudo inclut un espace, l'user est redirige sur une page error
    if user.username.include?(" ")
      redirect_to "/error2"
      
    # Si l’user est valide, il a un id et on le redirige vers la page profil
    elsif user.id != nil
      redirect_to "/users/#{User.last.username}"  
     
    # sinon on l’envoie vers une page error
    else
      redirect_to "/error"
    end
  end

  # Recupere l’username entré et stocke les infos de l’user actuel dans des variables
  def show
    @username = params[:username]
    @id = User.find_by(username: @username).id
    @bio = User.find_by(username: @username).bio
  end

  def error
  end
end
