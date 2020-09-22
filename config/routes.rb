Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :create, :edit, :update]
  root 'users#index'
  get '/users' =>'users#index'
  get '/users/:id' => 'users#edit'
end
