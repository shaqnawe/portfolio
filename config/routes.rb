Rails.application.routes.draw do

  devise_for :users
resources :posts
resources :projects
resources :contacts, only: [:new, :create]

get 'welcome/index'
get 'contacts/new'
get 'articles/articles'
get '/contacts' => 'contacts#create'

resources :contacts, only: [:new, :create]

root 'welcome#index'
get '*path' => redirect('/')
end
