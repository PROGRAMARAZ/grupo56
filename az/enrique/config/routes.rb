Rails.application.routes.draw do
  get 'libros/mis-libros', to: "user#index"
  post 'libros/agregar', to: "user#add_book"
  devise_for :users
  root to: "boostore#index"
  get "autores", to: 'author#index'

## Acciones de mi Appi:

get 'appi/libros', to: "appi#books"
get 'appi/libro/:book_id', to: "appi#show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
