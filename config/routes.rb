Rails.application.routes.draw do

get 'welcome/index'
get 'contacts/new'
get 'articles/articles'
get '/contacts' => 'contacts#create'

resources :contacts, only: [:new, :create]

root 'welcome#index'
end
