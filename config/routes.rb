Rails.application.routes.draw do
  # users
  get 'users/index'
  # posts
  get 'posts/index'
  get 'posts/new'
  get 'posts/:id/edit' => 'posts#edit'
  get 'posts/:id' => 'posts#show'
  post 'posts/:id/delete' => 'posts#delete'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/create'
  # home
  get '/' => 'home#top'
  get 'about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
