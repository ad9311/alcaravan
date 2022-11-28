Rails.application.routes.draw do
  root 'dashboard#index'

  # Dashboard
  resources :dashboard, only: %i[index]

  # Presentations
  resources :presentations, only: %i[index]
  post 'presentations/paginate'

  devise_for :users
end
