Rails.application.routes.draw do
  root 'about#index'

  # Dashboard
  resources :dashboard, only: %i[index]

  # Students
  resources :students
  delete 'reset_answers', to: 'students#reset_answers'

  # Levels
  resources :levels
  get "download_pdf", to: "levels#download_pdf"

  # Presentations
  resources :about, only: %i[index]
  post 'about/paginate'

  # Questions
  resources :questions, only: %i[index show]
  post 'submit_question', to: 'questions#submit'
  get 'previous_question', to: 'questions#back'
  patch 'resubmit_question', to: 'questions#resubmit'
  get 'partial_results', to: 'questions#partial_results'
  delete 'reset_level', to: 'questions#reset_level'
  get 'discover', to: 'questions#discover'
  get 'results', to: 'questions#results'
  get 'error', to: 'questions#error'

  # Comments
  resources :comments, only: %i[index new create]

  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: 'users/sessions'
  }
end
