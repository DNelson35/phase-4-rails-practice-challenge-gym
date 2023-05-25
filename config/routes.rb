Rails.application.routes.draw do
  resources :gyms, only: [:show, :destroy]

  resources :memberships, only: [:create]

  resources :clients, only: [:show]
end
