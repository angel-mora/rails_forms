Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new,:create, :index,:show,:update,:edit,:update,:destroy]
  root 'users#new'
end
