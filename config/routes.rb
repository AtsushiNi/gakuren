Rails.application.routes.draw do
  get 'matches/index'
  get 'matches/edit'
  get 'matches/update'

  namespace :admin do
    resources :roots
    resources :news
    resources :members
    resources :colleges
    resources :singles_tournaments
    resources :matches
    resources :singles_players
    resources :rankings
    root to: "members#index"
  end

  post '/admin/pointranking/calculate', to: 'admin/rankings#calculate' #adminユーザー用のポイントランキング計算および表示(モデルの作成保存はadministrateのrankingのcreateで)

  root 'top#home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/livescore', to: 'matches#livescore' #ライブスコアページ
  get '/draw', to: 'matches#draw' #トーナメント表
  post '/livescore/start', to: "matches#start" #試合開始
  post '/match', to: 'matches#update' #スコアアップデート

  resources :news
  resources :members
  resources :colleges
  resources :rankings, :only => [:index, :show]

  get 'colleges/:id/competent/edit', to: 'colleges#competent_edit', as: :competent
  get 'colleges/:id/competent/entry', to: 'colleges#competent_entry'
end
