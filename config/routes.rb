Rails.application.routes.draw do
  root 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :users, only: [:new, :create]
end
