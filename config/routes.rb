Rails.application.routes.draw do

  namespace :admin do
    resources :roots
    resources :news, :except => :destroy
    resources :members
    resources :colleges
    resources :singles_tournaments
    resources :matches, :except => [:new, :create, :destroy]
    resources :singles_players
    resources :rankings
    root to: "roots#index"
  end

  post '/admin/pointranking/calculate', to: 'admin/rankings#calculate' #adminユーザー用のポイントランキング計算および表示(モデルの作成保存はadministrateのrankingのcreateで)

  root 'top#home' #ルート

  #セッション
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/livescore', to: 'matches#livescore' #ライブスコアページ
  get '/draw', to: 'matches#draw' #トーナメント表
  post '/livescore/start', to: "matches#start" #試合開始
  post '/livescore/update', to: 'matches#update' #スコアアップデート

  resources :news, :only => :index
  resources :members, :only => :index
  resources :rankings, :only => [:index, :show]
  resources :singles_tournaments, :only => [:index, :show]
  resources :colleges, :only => :index

  #主務アカウント
  get 'colleges/:id/competent/edit', to: 'colleges#competent_edit', as: :competent_edit
  patch 'colleges/:id/competent/update', to: 'colleges#competent_update', as: :competent_update
  get 'colleges/:id/competent/entry', to: 'colleges#competent_entry'
  get 'colleges/:id/competent/club_members', to: 'club_members#index'
  get 'colleges/:id/competent/club_members/new', to: 'club_members#new'
  post 'colleges/:id/competent/club_members/create', to: 'club_members#create'
  get 'colleges/:college_id/competent/club_members/:id/edit', to: 'club_members#edit'
  patch 'colleges/:college_id/competent/club_members/:id/update', to: 'club_members#update'
  delete 'colleges/:college_id/competent/club_members/:id/destroy', to: 'club_members#destroy'

end
