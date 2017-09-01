Rails.application.routes.draw do

	# https://shielded-waters-52658.herokuapp.com/ | https://git.heroku.com/shielded-waters-52658.git

  resources :mattresses, path: 'matras', except: [:edit, :update, :destroy]
  root 'pages#index'
  get 'customers/new'   => 'customers#new'
  post 'customers/new'  => 'customers#create'
  get 'bedankt'					=> 'customers#success'
  post 'bedankt'				=> 'customers#bedankt'
end