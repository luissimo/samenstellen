Rails.application.routes.draw do

  # PAGINA'S
  root 'homes#index'
  get  'matras'                                 => 'homes#dynamic_landing'
  get  'actievoorwaarden'                       => 'pages#actievoorwaarden'
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
  post 'kortingscode_checken'                   => 'application#kortingscode_checken', as: 'kortingscode_checken'

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

  # SEO
  scope("matrassen", as: 'seo_matrassen') do
    get 'delft'                               =>  'seo_pages#delft'
    get 'den-hoorn'                           =>  'seo_pages#den_hoorn'
    get 'delfgauw'                            =>  'seo_pages#delfgauw'
    get 'pijnacker'                           =>  'seo_pages#pijnacker'
    get 'venlo'                               =>  'seo_pages#venlo'
    get 'tegelen'                             =>  'seo_pages#tegelen'
    get 'blerick'                             =>  'seo_pages#blerick'
    get 'venray'                              =>  'seo_pages#venray'
    get 'emmen'                               =>  'seo_pages#emmen'
    get 'klazienaveen'                        =>  'seo_pages#klazienaveen'
    get 'hoogeveen'                           =>  'seo_pages#hoogeveen'
    get 'emmer-compascuum'                    =>  'seo_pages#emmer_compascuum'
    get 'ede'                                 =>  'seo_pages#ede'
    get 'veenendaal'                          =>  'seo_pages#veenendaal'
    get 'barneveld'                           =>  'seo_pages#barneveld'
    get 'wageningen'                          =>  'seo_pages#wageningen'
    get 'renkum'                              =>  'seo_pages#renkum'
    get 'dordrecht'                           =>  'seo_pages#dordrecht'
    get 'hendrik-ido-ambacht'                 =>  'seo_pages#hendrik_ido_ambacht'
    get 'sliedrecht'                          =>  'seo_pages#sliedrecht'
    get 'zwijndrecht'                         =>  'seo_pages#zwijndrecht'
    get 'gorinchem'                           =>  'seo_pages#gorinchem'
    get 'papendrecht'                         =>  'seo_pages#papendrecht'
    get 'alblasserdam'                        =>  'seo_pages#alblasserdam'
    get 'giessendam-neder-hardinxveld'        =>  'seo_pages#giessendam_neder_hardinxveld'
  end

  # REDIRECT ALL UNKNOWN ROUTES TO ROOT
  get '*path' => redirect('/')
end
