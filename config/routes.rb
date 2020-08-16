Rails.application.routes.draw do
  resources :wine_index_lists
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
