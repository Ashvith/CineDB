Rails.application.routes.draw do
  resources :movies
  # Home page
  root 'home#index'
  #About page
  get 'about', to: 'home#about', as: 'about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
