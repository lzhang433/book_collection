Rails.application.routes.draw do

  root "user_books#index"
  resources :users
  resources :user_books
  
  resources :books do 
    member do 
      get :delete 
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
