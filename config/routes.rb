Rails.application.routes.draw do
  root 'nl#meribas'
  get 'nl/hoe'
  get 'nl/result'
  get 'nl/candidates'
  get 'nl/prijs'
  get 'nl/support'
  get 'nl/rechten'
  get 'nl/privacy'
  get 'nl/algemenevoorwaarden'
  get 'nl/overzicht'
  get 'nl/overons'
  get 'nl/sourcing'
  get 'nl/comingsoon'
  get 'media/partners'
  get 'nl/gebruik'
  get 'nl/werkwijze'
  get 'nl/startups'
  get 'nl/kmo'
  get 'nl/groteonderneming'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
