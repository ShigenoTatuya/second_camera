Rails.application.routes.draw do
  
  # resources :products
  
  resources :products do
    get "search", on: :collection
  end
  
end
