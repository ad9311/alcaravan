Rails.application.routes.draw do
  root 'dashboard#index'

  resources :dashboard, only: %i[index]
  resources :students
  resources :levels
  get "download_pdf", to: "levels#download_pdf"

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
