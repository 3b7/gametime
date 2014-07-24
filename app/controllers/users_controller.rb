class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "Thanks for your signing up. Now Roar!"
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @roar = Roar.new
  end
  
end
