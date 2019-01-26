Rails.application.routes.draw do
  get 'tasks/index'
  root to: 'tasks#index'
  resources :tasks, only: :index
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
