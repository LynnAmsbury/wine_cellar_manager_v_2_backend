class UsersController < ApplicationController
  before_action :find_user_by_id, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    render json: @user
  end

  def update
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user.destroy
    redirect_to action: 'index'
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end

  def find_user_by_id
    @user = User.find(params[:id])
  end
  
end