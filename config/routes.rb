Rails.application.routes.draw do
  resources :owls
  resources :hedgehogs
  resources :chicks
  root to: redirect("/cats")
  resources :dogs
  resources :cats
end
