Rails.application.routes.draw do
  root 'dashboard#index'

  # Dashboard
  resources :dashboard, only: %i[index]

  # Presentations
  resources :about, only: %i[index]
  post 'about/paginate'

  devise_for :users
end
