Rails.application.routes.draw do

  devise_for :users

  root 'posts#index'
  resources :users
  resources :posts, :except => [:show]
  get '/posts/:id' => 'posts#showpost'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
