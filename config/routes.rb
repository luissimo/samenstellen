Rails.application.routes.draw do

  resources :mattresses, path: 'matras', except: [:edit, :update, :destroy]
  root 'pages#index'
  
end
