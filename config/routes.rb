Rails.application.routes.draw do


  ######### USER REP ###############
  
get '/user_rep', to: 'user_rep#index'
get '/user_rep/new', to: 'user_rep#new', as: 'new_user_rep'
post '/user_rep', to: 'user_rep#create'
get '/user_rep/:id', to: 'user_rep#show'
get '/user_rep/:id/edit', to: 'user_rep#edit', as: 'edit_user_rep'
delete '/user_rep/:id', to: 'user_rep#destroy'
patch '/user_rep/:id', to: 'user_rep#update'

#########  REP ###############
  
get '/rep', to: 'rep#index'
get '/rep/new', to: 'rep#new', as: 'new_rep'
post '/rep', to: 'rep#create'
get '/rep/:id', to: 'rep#show'
get '/rep/:id/edit', to: 'rep#edit', as: 'edit_rep'
delete '/rep/:id', to: 'rep#destroy'
patch '/rep/:id', to: 'rep#update'

#########  REP BILLS ###############
  
get '/rep_bills', to: 'rep_bills#index'
get '/rep_bills/new', to: 'rep_bills#new', as: 'new_rep_bills'
post '/rep_bills', to: 'rep_bills#create'
get '/rep_bills/:id', to: 'rep_bills#show'
get '/rep_bills/:id/edit', to: 'rep_bills#edit', as: 'edit_rep_bills'
delete '/rep_bills/:id', to: 'rep_bills#destroy'
patch '/rep_bills/:id', to: 'rep_bills#update'

#########  REP COMMITTEES ###############
  
get '/rep_committees', to: 'rep_committees#index'
get '/rep_committees/new', to: 'rep_committees#new', as: 'new_rep_committees'
post '/rep_committees', to: 'rep_committees#create'
get '/rep_committees/:id', to: 'rep_committees#show'
get '/rep_committees/:id/edit', to: 'rep_committees#edit', as: 'edit_rep_committees'
delete '/rep_committees/:id', to: 'rep_committees#destroy'
patch '/rep_committees/:id', to: 'rep_committees#update'

#########  REP CAMPAIGN FINANCE ###############
  
get '/rep_campaign_finances', to: 'rep_campaign_finances#index'
get '/rep_campaign_finances/new', to: 'rep_campaign_finances#new', as: 'new_rep_campaign_finances'
post '/rep_campaign_finances', to: 'rep_campaign_finances#create'
get '/rep_campaign_finances/:id', to: 'rep_campaign_finances#show'
get '/rep_campaign_finances/:id/edit', to: 'rep_campaign_finances#edit', as: 'edit_rep_campaign_finances'
delete '/rep_campaign_finances/:id', to: 'rep_campaign_finances#destroy'
patch '/rep_campaign_finances/:id', to: 'rep_campaign_finances#update'

#########  SENATE COMMITTEES ###############
  
get '/senate_committees', to: 'senate_committees#index'
get '/senate_committees/new', to: 'senate_committees#new', as: 'new_senate_committees'
post '/senate_committees', to: 'senate_committees#create'
get '/senate_committees/:id', to: 'senate_committees#show'
get '/senate_committees/:id/edit', to: 'senate_committees#edit', as: 'edit_senate_committees'
delete '/senate_committees/:id', to: 'senate_committees#destroy'
patch '/senate_committees/:id', to: 'senate_committees#update'


#########  SENATE BILLS ###############
  
get '/senate_bills', to: 'senate_bills#index'
get '/senate_bills/new', to: 'senate_bills#new', as: 'new_senate_bills'
post '/senate_bills', to: 'senate_bills#create'
get '/senate_bills/:id', to: 'senate_bills#show'
get '/senate_bills/:id/edit', to: 'senate_bills#edit', as: 'edit_senate_bills'
delete '/senate_bills/:id', to: 'senate_bills#destroy'
patch '/senate_bills/:id', to: 'senate_bills#update'


#########  SENATE CAMPAIGN FINANCE ###############
  
get '/senate_campaign_finances', to: 'senate_campaign_finances#index'
get '/senate_campaign_finances/new', to: 'senate_campaign_finances#new', as: 'new_senate_campaign_finances'
post '/senate_campaign_finances', to: 'senate_campaign_finances#create'
get '/senate_campaign_finances/:id', to: 'senate_campaign_finances#show'
get '/senate_campaign_finances/:id/edit', to: 'senate_campaign_finances#edit', as: 'edit_senate_campaign_finances'
delete '/senate_campaign_finances/:id', to: 'senate_campaign_finances#destroy'
patch '/senate_campaign_finances/:id', to: 'senate_campaign_finances#update'




  ######### USER SENATE ###############
  
get '/user_senate', to: 'user_senate#index'
get '/user_senate/new', to: 'user_senate#new', as: 'new_user_senate'
post '/user_senate', to: 'user_senate#create'
get '/user_senate/:id', to: 'user_senate#show'
get '/user_senate/:id/edit', to: 'user_senate#edit', as: 'edit_user_senate'
delete '/user_senate/:id', to: 'user_senate#destroy'
patch '/user_senate/:id', to: 'user_senate#update'


#########  SENATE ###############
  
get '/senate', to: 'senate#index'
get '/senate/new', to: 'senate#new', as: 'new_senate'
post '/senate', to: 'senate#create'
get '/senate/:id', to: 'senate#show'
get '/senate/:id/edit', to: 'senate#edit', as: 'edit_senate'
delete '/senate/:id', to: 'senate#destroy'
patch '/senate/:id', to: 'senate#update'

######### USER  ###############
  
get '/user', to: 'user#index'
get '/user/new', to: 'user#new', as: 'new_user_site'
post '/user', to: 'user#create'
get '/user/:id', to: 'user#show'
get '/user/:id/edit', to: 'user#edit', as: 'edit_user_site'
patch '/user/:id', to: 'user#update'
delete '/user/:id', to: 'user#destroy'


######### STATE BUDGET  ###############
  
get '/state_budget', to: 'state_budget#index'
get '/state_budget/new', to: 'state_budget#new', as: 'new_state_budget_site'
post '/state_budget', to: 'state_budget#create'
get '/state_budget/:id', to: 'state_budget#show'
get '/state_budget/:id/edit', to: 'state_budget#edit', as: 'edit_state_budget_site'
patch '/state_budget/:id', to: 'state_budget#update'
delete '/state_budget/:id', to: 'state_budget#destroy'


######### STATE AGENCIES  ###############
  
get '/state_agencies', to: 'state_agencies#index'
get '/state_agencies/new', to: 'state_agencies#new', as: 'new_state_agencies_site'
post '/state_agencies', to: 'state_agencies#create'
get '/state_agencies/:id', to: 'state_agencies#show'
get '/state_agencies/:id/edit', to: 'state_agencies#edit', as: 'edit_state_agencies_site'
patch '/state_agencies/:id', to: 'state_agencies#update'
delete '/state_agencies/:id', to: 'state_agencies#destroy'


######### MINORITY BUSINESS  ###############
  
get '/minority_business', to: 'minority_business#index'
get '/minority_business/new', to: 'minority_business#new', as: 'new_minority_business_site'
post '/minority_business', to: 'minority_business#create'
get '/minority_business/:id', to: 'minority_business#show'
get '/minority_business/:id/edit', to: 'minority_business#edit', as: 'edit_minority_business_site'
patch '/minority_business/:id', to: 'minority_business#update'
delete '/minority_business/:id', to: 'minority_business#destroy'



end
