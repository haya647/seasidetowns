Rails.application.routes.draw do


  get "/", to: "pages#index"
  resources :topic04s
  resources :topic03s
  resources :topic02s
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/comments' ,to:'comments#create'
  resources :comments

  post '/comment02s' ,to:'comment02s#create'
  resources :comment02s
  #delete "/comments/#{:id}",to:"comments#destroy"
  post '/comment03s' ,to:'comment03s#create'
  resources :comment03s

  post '/comment04s' ,to:'comment04s#create'
  resources :comment04s
end
