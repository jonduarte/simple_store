class SessionsController < ApplicationController

  def create
    @user = User.find(:first, :conditions => ["login = ? AND password = ?", params[:login], params[:password]])
    if @user
      session[:logged] = true
      redirect_to "/"
    else
      flash[:notice] = "Login ou senha inválidos"
      redirect_to "/sessions/new"
    end

  end

  def destroy
  end

end

