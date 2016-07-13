Rails.application.routes.draw do

  # devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks"}

  root 'compilations#index'

  resources :compilations

  resources :locations
  
  devise_for :users

  resources :favorites


  get 'search' => "locations#search"

  get 'users/show'
  get 'users/edit'
  get 'users/update'
  
  get 'dogs/index'
  get 'dogs/home'
  post 'dogs/show'
  get 'dogs/edit'
  get 'dogs/new'

  get 'statics/meet_the_team'
  get 'statics/get_involved'
  get 'statics/breeds_traits'
  get 'statics/info_page'

  # GET QUIZZES

  get 'quizzes/1', to: 'quizzes#question_1'
  get 'quizzes/2', to: 'quizzes#question_2'
  get 'quizzes/3', to: 'quizzes#question_3'
  get 'quizzes/4', to: 'quizzes#question_4'
  get 'quizzes/5', to: 'quizzes#question_5'
  get 'quizzes/6', to: 'quizzes#question_6'
  get 'quizzes/7', to: 'quizzes#question_7'
  get 'quizzes/results', to: 'quizzes#results', as: 'results'

  # POST QUIZZES

  post 'quizzes/form', to:'quizzes#form'

end
