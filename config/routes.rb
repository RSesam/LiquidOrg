LiquidOrg::Application.routes.draw do

  resources :addresses
	resources :users
	
  root :to => 'users#index'

End
