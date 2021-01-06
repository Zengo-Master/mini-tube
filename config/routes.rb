Rails.application.routes.draw do
  root to: 'videos#index'
  resources :videos only: [:index, :new, :create]
end
