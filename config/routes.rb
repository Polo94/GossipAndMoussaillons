Rails.application.routes.draw do
  get 'gossips/new'

 	#get 'gossip' 
 	#post 'gossip' 
 	get 'gossip/new' 
 	patch 'gossip/new' 
	
	root"application#hello"

	resources :gossips
end
