Rails.application.routes.draw do
  resources :encounters
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'patients#index'
end