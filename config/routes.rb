Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  patch '/upvote/:vote.id', to: 'votes#upvote'
  get '/votes', to: 'votes#index'
  root to: 'test#home'
end
