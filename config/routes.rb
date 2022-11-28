Rails.application.routes.draw do
  root 'about#index'

  # Dashboard
  resources :dashboard, only: %i[index]
  resources :students
  resources :levels
  get "download_pdf", to: "levels#download_pdf"

  # Presentations
  resources :about, only: %i[index]
  post 'about/paginate'

  devise_for :users
end
