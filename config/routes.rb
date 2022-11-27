Rails.application.routes.draw do
  root 'dasboard#index'

  resources :dasboard, only: %i[index]

  devise_for :users
end
