Rails.application.routes.draw do
namespace :admin do
  resources :roots
  resources :news
  resources :members
  resources :colleges
  root to: "members#index"
end
root 'top#home'
get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
resources :news
resources :members
resources :colleges
get 'colleges/:id/competent/edit', to: 'colleges#competent_edit', as: :competent
get 'colleges/:id/competent/entry', to: 'colleges#competent_entry'
end
