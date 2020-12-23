Rails.application.routes.draw do
  resources :users
  get '/typehead/:query', to: 'users#typehead'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
