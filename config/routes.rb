Rails.application.routes.draw do
  root 'products#index'
  
  devise_for :users
  
  resources :products do
    collection do
      
      get 'other_aim'
      get 'family'
      get 'travel'
      get 'bird'
      get 'portrait'
      get 'all_round'
      # 価格帯
      get 'price_range/:price_range', to: 'products#price_range', as: 'price_range'
      # メーカー名
      get 'maker/:name', to: 'products#maker', as: 'maker'
      # 製品の種類
      get 'product_type/:name', to: 'products#product_type', as: 'product_type'
    end
    
    get "search", on: :collection
  end

end