Rails.application.routes.draw do
  devise_for :users
  root to: 'concerts#index'
	
	resources :tours   
	resources :concerts   
end
