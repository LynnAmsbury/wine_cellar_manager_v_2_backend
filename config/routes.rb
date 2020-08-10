Rails.application.routes.draw do
  resources :users, include: [:index, :show, :create, :update, :destroy]
end
