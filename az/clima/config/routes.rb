Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    post 'auth' => 'user_token#create'
    namespace :v1 do
      resources :l_ocation do
        resources :report
        # El reporte le pertenece a la ubicación
    
    end
    end
  end
end
