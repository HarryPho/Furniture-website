#All work done within this controller was completed by Zachary T. Kaspar 1st
class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end

  def create
    user = User.authenticate(params[:session][:email],
                           params[:session][:password])
    if user.nil?
      @title = "Sign in"
      render 'new'
    else
      sign_in user
      redirect_to home_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
