#All work done within this controller was completed by Zachary T. Kaspar 1st
class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.all
    @title = "Display all users"

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  def show
    @user = User.find(params[:id])

  end

  def new
    @user = User.new
    @title = "Sign up"
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
    @title = "Edit Acccount"
  end
  
  def where
    @user = User.where(params[:c_type])
  end
  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to home_path
    else
      @title = "Sign up"
      render 'new'
    end
  end

  

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:c_type,:c_state,:city)
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
