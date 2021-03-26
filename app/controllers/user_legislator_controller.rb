class UserLegislatorController < ApplicationController
  def index
    user_legislators = UserLegislator.all
    render json: user_legislators
  end

  def new
  end

  def create
    user_legislator = UserLegislator.create(user_legislator_params)
    render json: user_legislator
  end

  def show
    user_legislator = UserLegislator.find(params[:id])
    render json: user_legislator
  end

  def edit
  end

  def update
    user_legislator = UserLegislator.find_by(user_id:params[:user_id], legislator_id: params[:legislator_id])
    user_legislator.update(user_legislator_params)
    # byebug
    render json: user_legislator
  end

  def delete
    user_legislator = UserLegislator.find(params[:id])
    user_legislator.destroy
    render json: user_legislator
  end
  private
  def user_legislator_params
      params.permit(:user_id, :legislator_id, :notes )
  end
end
