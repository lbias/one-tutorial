Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'

  get 'welcome/index'

  resources :groups do
    resources :posts
  end
end
