Rails.application.routes.draw do
  root 'dashboard#index'

  resources :dashboard, only: %i[index]

  devise_for :users
end
