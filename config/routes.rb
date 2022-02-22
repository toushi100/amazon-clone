Rails.application.routes.draw do
  resources :items do
  member do
    delete :delete_image_attachment
    get :delete_image_attachment
  end
end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
