Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords',
    :confirmations => 'users/confirmations'
  }
  devise_scope :user do
    get 'users/sign_up', to: 'users/registrations#new'
    get 'users/sign_in', to: 'users/sessions#new'
    delete 'users/sign_out', to: 'users/sessions#destroy'
    resources :boats
    resources :jobs
    resources :schedules
  end


  devise_scope :user do
       root to: 'home#index'
      end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
