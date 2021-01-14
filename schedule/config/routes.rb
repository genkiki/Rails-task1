Rails.application.routes.draw do
  get '/' => 'schedule#index'
  delete '/schedule/:id/delete' => 'schedule#delete'
end
