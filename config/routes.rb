Rails.application.routes.draw do
  root "restaurants#index"

  resources :restaurants, except: [:new] do
    resources :reviews, only: [:create]
  end
end
