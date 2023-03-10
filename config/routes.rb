Rails.application.routes.draw do
  get 'users/show'
  root to: 'static_pages#home'
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  devise_for :users
  get 'users/show'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
