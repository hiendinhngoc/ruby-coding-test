Rails.application.routes.draw do
  resources :users do
  	resources :histories, only: [:index, :show], shallow: true
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
