Rails.application.routes.draw do
  get 'orders/create'
  get 'tasks/index'
  root to: 'tasks#index'
  resources :tasks, only: :index do
    resources :orders, only: :create
  end
  resources :orders, only: :index


  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
