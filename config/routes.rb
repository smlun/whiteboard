Rails.application.routes.draw do
  resources :topics do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'topics#index'
end
