Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  resources :tasks, only: [:index, :create, :show]
  resources :tasksusers, only: [:index, :create, :delete, :show, :destroy]
end
