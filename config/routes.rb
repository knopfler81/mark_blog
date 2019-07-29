Rails.application.routes.draw do
  devise_for :users
  
  root to: "pages#index"
  
	resources :tours   
	resources :concerts  
	resources :events 
	resources :calendars

	get "home", to: "pages#index"


end
