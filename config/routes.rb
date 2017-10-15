Rails.application.routes.draw do

	# https://agile-bayou-11137.herokuapp.com/ | https://git.heroku.com/agile-bayou-11137.git

  resources :mattresses, path: 'matras', except: [:edit, :update, :destroy]
  resources :double_mattress_ones, path: '2persoonsmatras', except: [:edit, :update, :destroy]
  root 'pages#index'
  get 'customers/new'  			  => 'customers#new'
  post 'customers/new' 			  => 'customers#create'
  get 'bedankt'								=> 'customers#success'

end
