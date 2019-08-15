Rails.application.routes.draw do
  get 'doses/create'
  get 'doses/destroy'
  get 'doses/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: %i[index show new create destroy] do
    resources :doses, only: [:create]
  end
  resources :doses, only: %i[destroy edit]
end
