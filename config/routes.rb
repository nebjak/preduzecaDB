PreduzecaDb::Application.routes.draw do
  resources :preduzece_telefon

  resources :preduzece

  resources :tip_telefona

  resources :status

  resources :mesto

  resources :delatnost

  root 'delatnost#index'
end
