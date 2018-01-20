Rails.application.routes.draw do

	# https://agile-bayou-11137.herokuapp.com/ | https://git.heroku.com/agile-bayou-11137.git

  # PAGINA'S
  root 'homes#index'
  get  'matras'                                 => 'homes#dynamic_landing'
  get  'over-tenzen'                            => 'pages#over_tenzen'
  get  'privacybeleid'                          => 'pages#privacy_beleid'
  get  'vragen'                                 => 'pages#vragen'
  get  'garanties'                              => 'pages#garanties'
  get  'cookiebeleid'                           => 'pages#cookie_beleid'
  get  'retourneren'                            => 'pages#retourneren'
  get  'algemene-voorwaarden'                   => 'pages#algemene_voorwaarden'
  get  'algemene-voorwaarden-ingewikkeld'       => 'pages#algemene_voorwaarden_ingewikkeld'
  get  'contact'                                => 'pages#contact'
  post 'contact'                                => 'pages#create_contact'
  get  'sitemap'                                => 'pages#sitemap',  defaults: { format: 'xml' }

  # BESTELLEN
  scope("bestellen") do
    get  '/'                            => 'pages#bestellen', as: 'bestellen'
    get  'eenpersoons'                  => 'mattresses#new', as: 'bestellen_eenpersoons'
    post 'eenpersoons'                  => 'mattresses#create', as: 'bestellen_eenpersoons_post'
    get  'eenpersoons/resultaat'        => 'mattresses#show', as: 'bestellen_eenpersoons_resultaat'
    get  'tweepersoons'                 => 'pages#solo_or_duo', as: 'bestellen_tweepersoons'
    get  'tweepersoons/solo'            => 'double_mattress_ones#new', as: 'bestellen_tweepersoons_solo'
    post 'tweepersoons/solo'            => 'double_mattress_ones#create', as: 'bestellen_tweepersoons_solo_post'
    get  'tweepersoons/solo/resultaat'  => 'double_mattress_ones#show', as: 'bestellen_tweepersoons_solo_resultaat'
    get  'tweepersoons/duo'             => 'double_mattress_twos#new', as: 'bestellen_tweepersoons_duo'
    post 'tweepersoons/duo'             => 'double_mattress_twos#create', as: 'bestellen_tweepersoons_duo_post'
    get  'tweepersoons/duo/resultaat'   => 'double_mattress_twos#show', as: 'bestellen_tweepersoons_duo_resultaat'
  end

  # AFREKENEN
  get  'afrekenen'                              => 'customers#new' , as: 'afrekenen'
  post 'afrekenen'                              => 'customers#create', as: 'afrekenen_post'
  get  'bedankt'                                => 'customers#success', as: 'bedankt'

  # REDIRECT ALL UNKNOWN ROUTES TO ROOT
  get '*path' => redirect('/')
end
