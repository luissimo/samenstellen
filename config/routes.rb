Rails.application.routes.draw do

  # PAGINA'S
  root 'homes#index'
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
  get 'matras'                                => 'homes#dynamic_landing'
  get 'welke-matras-kopen'                    => 'homes#welke_matras_kopen'
  get 'welke-matras-kiezen'                   => 'homes#welke_matras_kiezen'
  get 'welk-matras-past-bij-mij'              => 'homes#welk_matras_past_bij_mij'
  get 'matras-online-bestellen'               => 'homes#matras_online_bestellen'
  get 'matras-advies'                         => 'homes#matras_advies'
  get 'matras-bestellen'                      => 'homes#matras_bestellen'
  get 'matras-kopen'                          => 'homes#matras_kopen'
  get 'beste-matras-kopen'                    => 'homes#beste_matras_kopen'
  get 'matras-80x200'                         => 'homes#matras_80x200'
  get 'matras-90x200'                         => 'homes#matras_90x200'
  get 'matras-120x200'                        => 'homes#matras_120x200'
  get 'matras-140x200'                        => 'homes#matras_140x200'
  get 'matras-160x200'                        => 'homes#matras_160x200'
  get 'matras-180x200'                        => 'homes#matras_180x200'

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
    get 'leiden'                              =>  'seo_pages#leiden'
    get 'oegstgeest'                          =>  'seo_pages#oegstgeest'
    get 'wassenaar'                           =>  'seo_pages#wassenaar'
    get 'katwijk-aan-zee'                     =>  'seo_pages#katwijk_aan_zee'
    get 'sassenheim'                          =>  'seo_pages#sassenheim'
    get 'voorhout'                            =>  'seo_pages#voorhout'
    get 'leiderdorp'                          =>  'seo_pages#leiderdorp'
    get 'voorschoten'                         =>  'seo_pages#voorschoten'
    get 'lisse'                               =>  'seo_pages#lisse'
    get 'maastricht'                          =>  'seo_pages#maastricht'
    get 'heerlen'                             =>  'seo_pages#heerlen'
    get 'valkenburg'                          =>  'seo_pages#valkenburg'
    get 'meerssen'                            =>  'seo_pages#meerssen'
    get 'zwolle'                              =>  'seo_pages#zwolle'
    get 'kampen'                              =>  'seo_pages#kampen'
    get 'ommen'                               =>  'seo_pages#ommen'
    get 'raalte'                              =>  'seo_pages#raalte'
    get 'meppel'                              =>  'seo_pages#meppel'
    get 'dalfsen'                             =>  'seo_pages#dalfsen'
    get 'steenwijk'                           =>  'seo_pages#steenwijk'
    get 'heerde'                              =>  'seo_pages#heerde'
    get 'zoetermeer'                          =>  'seo_pages#zoetermeer'
    get 'zoeterwoude'                         =>  'seo_pages#zoeterwoude'
    get 'alphen-aan-den-rijn'                 =>  'seo_pages#alphen_aan_den_rijn'
    get 'moerkapelle'                         =>  'seo_pages#moerkapelle'
  end

  # REDIRECT ALL UNKNOWN ROUTES TO ROOT
  get '*path' => redirect('/')
end
