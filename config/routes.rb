Rails.application.routes.draw do

  root 'compilations#index'

  resources :compilations do
    resources :favorites
  end

  resources :quizzes
    
  devise_for :users

  get 'dogs/index'

  get 'dogs/home'

  get 'dogs/show'

  get 'dogs/edit'

  get 'dogs/new'

  get 'statics/meet_the_team'

  get 'statics/get_involved'

  get 'statics/breeds_traits'

  get 'statics/info_page'

end
