Rails.application.routes.draw do
  root to: 'videos#index'
  resources :videos do
    collection do
      get 'search'
    end
  end
end
