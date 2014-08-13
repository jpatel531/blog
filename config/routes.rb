Rails.application.routes.draw do
  root to: 'main#index'

  # get 'main/index'

  resources :posts

end
