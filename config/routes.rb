Rails.application.routes.draw do
  get 'exercises/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'dashboards#index'

	resources :users do
		resources :exercises
	end
end
