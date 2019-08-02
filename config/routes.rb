Rails.application.routes.draw do
  get 'posts/index'
  root 'users#new'
  resources :users, except:[:index]
  resources :sessions, only:[:new, :create, :destroy]
  resources :posts
end
