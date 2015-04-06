class UsersController < ApplicationController

  def index
    @users = User.all

  
  end

  def show
    @user = User.find(params[:id])

  end

  def new
    @user = User.new


  end

  def edit
    @user = User.find(params[:id])
  end


  def create
    @user = User.new(params[:user])

    @user.save
    redirect_to @user, notice: 'User was successfully created.' 
  
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

  
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
