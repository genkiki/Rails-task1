Rails.application.routes.draw do
  # get '/' => 'schedule#index'
  # get '/schedule/:id' => 'schedule#show'
  # delete '/schedule/:id/delete' => 'schedule#delete'

  resources :schedule
end
