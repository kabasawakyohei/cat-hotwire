Rails.application.routes.draw do
  root "cats#index"
  resources :dogs
  resources :cats
end
