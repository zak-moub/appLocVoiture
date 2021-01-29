Rails.application.routes.draw do

  require 'sidekiq/web'
  mount Sidekiq::Web => "/sidekiq"

  devise_for :users
  root to: "pages#home"

  get 'dashboard', to: "pages#dashboard"
  get 'facture', to: "reservations#facture"


    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts #code de test issue de la génération du scaffold Post

  resources :agences
  resources :contrats
  resources :reservations
end
