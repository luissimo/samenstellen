Rails.application.routes.draw do

  root 'customizes#new'

  resources :customizes, only: [:new, :create, :show]
end
