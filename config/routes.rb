Rails.application.routes.draw do
  root 'users#new'
  resources :users, except:[:index]
  resources :sessions, only:[:new, :create, :destroy]
  resources :posts do
    collection do
    post :confirm
    end
  end
end
