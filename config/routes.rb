Rails.application.routes.draw do

	# https://agile-bayou-11137.herokuapp.com/ | https://git.heroku.com/agile-bayou-11137.git

  resources :mattresses, path: 'matras', except: [:index, :edit, :update, :destroy]
  resources :double_mattress_ones, path: '2persoonsmatras', except: [:index, :edit, :update, :destroy]
  resources :double_mattress_twos, path: '2persoonsmatras/duo', except: [:index, :edit, :update, :destroy]

  root 'homes#index'
  get 'customers/new'  			        => 'customers#new'
  post 'customers/new' 			        => 'customers#create'
  get 'bedankt'								      => 'customers#success'
  get 'over-ons'                    => 'pages#over_ons'
  get 'privacy-beleid'              => 'pages#privacy_policy'
  get 'veelgestelde-vragen'         => 'pages#faq'
  get 'garanties'                   => 'pages#garanties'
  get 'cookie-beleid'               => 'pages#cookie_policy'
  get 'retourneren'                 => 'pages#retourneren'
  get 'algemene-voorwaarden-simpel' => 'pages#algemene_voorwaarden_simpel'
  get 'algemene-voorwaarden'        => 'pages#algemene_voorwaarden'
  get 'contact'                     => 'pages#contact'
  post 'contact'                    => 'pages#create_contact'

end
