Rails.application.routes.draw do
  root 'users#new'
  resources :users, except:[:index]
  resources :sessions, only:[:new]
end
