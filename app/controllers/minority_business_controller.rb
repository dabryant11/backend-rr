class MinorityBusinessController < ApplicationController
  def index
    minority_businesses = MinorityBusiness.all
    render json: minority_businesses
  end

  def new
  end

  def create
    minority_business = MinorityBusiness.create(minority_business_params)
    render json: minority_business
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
      params.permit(:id, :name, :address, :rating, :image, :hours, :website, :twitter, :ig, :facebook)
  end



end
