Rails.application.routes.draw do
  get 'gossips/new'
  get 'gossips/index'

 	#get 'gossip' 
 	#post 'gossip' 
 	#get 'gossip/new' 
 	#patch 'gossip/new' 
	
	root "gossips#index"

	resources :gossips
end
