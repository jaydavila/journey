Rails.application.routes.draw do

  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/create'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/destroy'
  devise_for :users

  root 'posts#index', as: 'home'
  resources :users
  resources :posts do
   resources :comments
 end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
