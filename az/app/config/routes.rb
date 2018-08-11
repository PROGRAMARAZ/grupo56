Rails.application.routes.draw do
  resources :products
  root to: "user#index"
  get 'user/index'

  get 'usuarios/crear', to:"user#create" 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
