Rails.application.routes.draw do
  resources :users, include: [:index]
end
