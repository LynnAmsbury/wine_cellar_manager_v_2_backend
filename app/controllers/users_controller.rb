class UsersController < ApplicationController
  before_action :find_user_by_id, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
    render json: @users
  end
  
end