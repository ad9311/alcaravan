Rails.application.routes.draw do
  root 'dashboard#index'

  resources :students
  resources :dashboard, only: %i[index]

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
