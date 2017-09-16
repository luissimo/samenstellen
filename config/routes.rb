Rails.application.routes.draw do

	# https://evening-brook-69986.herokuapp.com/ | https://git.heroku.com/evening-brook-69986.git

  resources :mattresses, path: 'matras', except: [:edit, :update, :destroy]
  mount StripeEvent::Engine, at: '/webhook'
  root 'pages#index'
  get 'customers/new'   => 'customers#new'
  post 'customers/new'  => 'customers#create'
  get 'bedankt'					=> 'customers#success'
  post 'webhook'				=> 'customers#webhook'
end