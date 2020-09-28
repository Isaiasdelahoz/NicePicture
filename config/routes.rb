Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'photos#index'
  resources :photos, only: :index

  get 'photos/search', to: 'photos#search'
  get 'photos/favorites', to: 'photos#favorites'
  post 'photos/like', to: 'photos#like'
end
