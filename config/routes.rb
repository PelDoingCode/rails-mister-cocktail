Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  get 'landing', to: 'cocktails#landing', as: :landing

  resources :cocktails, only: %i[index show new create destroy] do
    resources :doses, only: [:create]
    # resources :ingredients, only: [:create]
  end
  resources :doses, only: %i[destroy edit]
end
