Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy] do
  	resource :favorites, only: [:create, :destroy]
  	resource :book_comments, only: [:create, :destroy]
  end
  root 'home#top'
  get 'home/about' => 'home#about' , as: 'about'

end
