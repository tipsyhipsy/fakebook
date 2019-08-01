Rails.application.routes.draw do
  root 'users#new'
  resources :users, only:[:index, :new, :show]
  resources :sessions, only:[:new]
end
