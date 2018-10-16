Rails.application.routes.draw do
  resources :topic04s
  resources :topic03s
  resources :topic02s
  get "/", to: "pages#index"
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
