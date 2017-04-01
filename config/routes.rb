Rails.application.routes.draw do

  root 'pages#choose_boxspring'
  #root 'customizes#new'

    get 'boxspring' => 'pages#choose_boxspring'
    get 'partner'   => 'pages#choose_partner'
    resources :customizes, only: [:new, :create, :show]
end
