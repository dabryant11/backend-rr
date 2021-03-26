Rails.application.routes.draw do


  ######### USER legislator ###############
  
get '/user_legislators', to: 'user_legislator#index'
get '/user_legislator/new', to: 'user_legislator#new', as: 'new_user_legislator'
post '/user_legislators', to: 'user_legislator#create'
get '/user_legislator/:id', to: 'user_legislator#show'
get '/user_legislator/:id/edit', to: 'user_legislator#edit', as: 'edit_user_legislator'
delete '/user_legislator/:id', to: 'user_legislator#delete'
patch '/user_legislators/:id', to: 'user_legislator#update'

#########  LEGISLATOR ###############
  
get '/legislators', to: 'legislators#index'
get '/legislator/new', to: 'legislators#new', as: 'new_legislator'
post '/legislators', to: 'legislators#create'
get '/legislator/:id', to: 'legislators#show'
get '/legislator/:id/edit', to: 'legislators#edit', as: 'edit_legislator'
delete '/legislator/:id', to: 'legislators#delete'
patch '/legislator/:id', to: 'legislators#update'

#########   BILLS ###############
  
get '/bills', to: 'bills#index'
get '/bills/new', to: 'bills#new', as: 'new_bills'
post '/bills', to: 'bills#create'
get '/bills/:id', to: 'bills#show'
get '/bills/:id/edit', to: 'bills#edit', as: 'edit_bills'
delete '/bills/:id', to: 'bills#delete'
patch '/bills/:id', to: 'bills#update'

#########   COMMITTEES ###############
  
get '/committees', to: 'committees#index'
get '/committees/new', to: 'committees#new', as: 'new_committees'
post '/committees', to: 'committees#create'
get '/committees/:id', to: 'committees#show'
get '/committees/:id/edit', to: 'committees#edit', as: 'edit_committees'
delete '/committees/:id', to: 'committees#delete'
patch '/committees/:id', to: 'committees#update'





######### USER  ###############
  
get '/users', to: 'user#index'
get '/user/new', to: 'user#new', as: 'new_user_site'
post '/users', to: 'user#create'
get '/user/:id', to: 'user#show'
get '/user/:id/edit', to: 'user#edit', as: 'edit_user_site'
patch '/user/:id', to: 'user#update'
delete '/user/:id', to: 'user#delete'


######### STATE BUDGET  ###############
  
get '/state_budgets', to: 'state_budget#index'
get '/state_budget/new', to: 'state_budget#new', as: 'new_state_budget_site'
post '/state_budgets', to: 'state_budget#create'
get '/state_budget/:id', to: 'state_budget#show'
get '/state_budget/:id/edit', to: 'state_budget#edit', as: 'edit_state_budget_site'
patch '/state_budget/:id', to: 'state_budget#update'
delete '/state_budget/:id', to: 'state_budget#delete'


######### STATE AGENCIES  ###############
  
get '/state_agencies', to: 'state_agencies#index'
get '/state_agencies/new', to: 'state_agencies#new', as: 'new_state_agencies_site'
post '/state_agencies', to: 'state_agencies#create'
get '/state_agencies/:id', to: 'state_agencies#show'
get '/state_agencies/:id/edit', to: 'state_agencies#edit', as: 'edit_state_agencies_site'
patch '/state_agencies/:id', to: 'state_agencies#update'
delete '/state_agencies/:id', to: 'state_agencies#delete'


######### MINORITY BUSINESS  ###############
  
get '/minority_businesses', to: 'minority_business#index'
get '/minority_business/new', to: 'minority_business#new', as: 'new_minority_business_site'
post '/minority_businesses', to: 'minority_business#create'
get '/minority_business/:id', to: 'minority_business#show'
get '/minority_business/:id/edit', to: 'minority_business#edit', as: 'edit_minority_business_site'
patch '/minority_business/:id', to: 'minority_business#update'
delete '/minority_business/:id', to: 'minority_business#delete'



end
