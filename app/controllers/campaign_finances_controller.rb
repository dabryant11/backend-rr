class CampaignFinancesController < ApplicationController
    def index
        campaign_finances = CampaignFinance.all
         render json: campaign_finances
       end
     
       def new
       end
     
       def create
       end
     
       def show
         campaign_finance = CampaignFinance.find(params[:id])
         render json: campaign_finance
       end
     
       def edit
       end
     
       def update
       end
     
       def delete
       end
     
     
       private
       def campaign_finance_params
          #  params.permit(:legislator_committee_id, :name, :district, :hometown, :committees, :party, :year_elected, :phone_number, :email)
       end
end
