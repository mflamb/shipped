Rails.application.routes.draw do
  get 'users/create'
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'boats/index'
  get 'boats/new'
  get 'boats/create'
  get 'boats/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
