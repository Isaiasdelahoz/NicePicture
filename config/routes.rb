Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :photos, only: :index
  get 'photos/search/:query', to: 'photos#search'
  get 'photos/favorites', to: 'photos#favorites'
  post 'photos/like ', to: 'photos#like'
end
