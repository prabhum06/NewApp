Rails.application.routes.draw do
  resources :groceries_items
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/about'

end
