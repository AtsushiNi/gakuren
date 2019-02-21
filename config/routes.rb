Rails.application.routes.draw do
root 'top#home'
resources :news
end
