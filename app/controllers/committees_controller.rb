class CommitteesController < ApplicationController
  def index
    committees = Committee.all
     render json: committees
   end
 
   def new
   end
 
   def create
   end
 
   def show
     committee = Committee.find(params[:id])
     render json: committee
   end
 
   def edit
   end
 
   def update
   end
 
   def delete
   end
 
 
   private
   def committee_params
       params.permit(:name, :chair, :vice_chair, :ranking_member, :members, :chamber)
   end
end
