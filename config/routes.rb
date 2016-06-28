Rails.application.routes.draw do
  root 'compilations#index'
  resources :compilations do 
    resources :favorites
  end
end
