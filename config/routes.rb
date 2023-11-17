Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/api_keys', to: 'api_keys#create'
  get '/api_keys/:id', to: 'api_keys#show'
  put '/api_keys/:id', to: 'api_keys#update'
  patch '/api_keys/:id', to: 'api_keys#update'
end
