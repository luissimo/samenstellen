Rails.application.routes.draw do


  resources :mattresses, path: 'matras'
  root 'pages#index'
  
end
