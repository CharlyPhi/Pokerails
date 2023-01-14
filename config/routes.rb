Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :favorites, only: %i[create get destroy]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  patch '/votes/:id', to: 'votes#upvote'
  get '/votes', to: 'votes#index'
  root to: 'test#home'
end
