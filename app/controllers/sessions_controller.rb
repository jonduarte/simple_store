class SessionsController < ApplicationController
  def create
    @user = User.find(:first, :conditions => ["login = ? AND password = ?", params[:login], params[:password]])
    if @user
      session[:logged] = true
      redirect_to root_path
    else
      flash[:notice] = "Login ou senha inválidos"
    end

  end

  def destroy
  end

end

