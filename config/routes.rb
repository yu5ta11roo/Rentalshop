Rails.application.routes.draw do
  get 'items/index'
  get 'items/:id' => 'items#show'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  post 'likes/:item_id/create' => 'likes#create'
  post 'likes/:item_id/destroy' => 'likes#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
