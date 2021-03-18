class MinorityBusinessesController < ApplicationController
  def index
    minority_businesses = MinorityBusiness.all
    render json: minority_businesses
  end

  def new
  end

  def create
  end

  def show
    minority_business = MinorityBusiness.find(params[:id])
    render json: minority_business
  end

  def edit
  end

  def update
  end

  def delete
  end


  private
  def minority_business_params
      params.permit(:id, :address, :rating, :image, :hours, :website, :twitter, :ig, :facebook)
  end



end
