Rails.application.routes.draw do
  resources :wine_index_list_items, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
end
