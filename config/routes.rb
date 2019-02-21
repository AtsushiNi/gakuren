Rails.application.routes.draw do
root 'top#home'
resources :news
resources :members
resources :colleges
end
