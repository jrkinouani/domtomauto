Rails.application.routes.draw do
  resources :reservations
  resources :charges
  resources :cars
  root "cars#index"
end
