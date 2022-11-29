Rails.application.routes.draw do
  root 'dashboard#index'

  # Dashboard
  resources :dashboard, only: %i[index]
  resources :students
  resources :levels
  get "download_pdf", to: "levels#download_pdf"

  # Presentations
  resources :about, only: %i[index]
  post 'about/paginate'

  # Questions
  resources :questions, only: %i[index show]
  post 'questions/submit', to: 'questions#submit'
  patch 'questions/fix', to: 'questions#fix'
  patch 'questions/reset_level', to: 'questions#reset_level'

  devise_for :users
end
