Rails.application.routes.draw do
  devise_for :members, controllers: { registrations: 'registrations' }
  get 'members/index'
  get 'home/index'
  resources :gigs
  # resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index'
end
