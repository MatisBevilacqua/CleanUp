class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @users = User.all
  end

  def welcome
  end

  def new
    @user = User.new
  end

  def find
    @user = if params[:search]
      User.where("name LIKE ?", "%#{params[:search][0..2]}%")
    else 
      User.all
    end
  end

  def create
    user =  User.create(user_params)
    redirect_to('/users/index/')
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :surname)
  end
end
