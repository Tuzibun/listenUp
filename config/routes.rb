Rails.application.routes.draw do

  resources :roles
  
  devise_for :users
  scope "/admin" do
	  authenticate :user do
	  	resources :narrators, only: [:new, :create, :edit, :update, :destroy]
      resources :audiobooks, only: [:new, :create, :edit, :update, :destroy]
	  end
  end

  resources :users
  resources :narrators, only: [:index, :show]

  root to: 'narrators#index'
  resources :audiobooks

  post "/search", to: "search#index"

end
