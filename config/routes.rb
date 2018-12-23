Rails.application.routes.draw do
	root 'kittens_controller#index'
	resources :kittens
end
