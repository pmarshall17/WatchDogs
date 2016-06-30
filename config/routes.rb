Rails.application.routes.draw do

  get 'dogs/index'

  get 'dogs/home'

  get 'dogs/show'

  get 'dogs/edit'

  get 'dogs/new'

  root 'compilations#index'
  resources :compilations do
    resources :favorites
  end
  resources :quizzes
end
