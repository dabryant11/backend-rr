class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def new
  end

  def create
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def edit
  end

  def update
  end

  def delete
  end


  private
  def user_params
      params.permit(:id, :name, :address, :district, :image, :username, :password_digest, :email)
  end
end
