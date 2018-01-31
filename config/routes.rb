Rails.application.routes.draw do
  get 'gossips/new'

	root"application#hello"

	resources :gossips
end
