TechReviewSite::Application.routes.draw do
  devise_for :users
  resources :users, only: :show
  # get 'products/:product_id/reviews/new' => 'reviews#new'
  # post 'products/:product_id/reviews' => 'reviews#create'

  # resources :reviews, only: [:new, :create]
  

  resources :products, only: :show do
    resources :reviews, only: [:new, :create]   #ネストさせる
    collection do
      get 'search'
    end
  end
  root 'products#index'
end
