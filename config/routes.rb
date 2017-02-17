Rails.application.routes.draw do
  resources :charges
  resources :cars
  root "cars#index"
end
