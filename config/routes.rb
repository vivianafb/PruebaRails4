Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks, only: [:index, :show] do
    resources :orders, only: [:index, :create, :update]
  end
  resources :orders, only: :index
 
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end