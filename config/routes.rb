Rails.application.routes.draw do
  
  #セッション
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  #ユーザー
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'

  #トップページ
  get 'toppages/index'
  
  #履歴
  get 'middles/history'
  
  #ランキング
  get 'rankings/middle', to: 'rankings#middle'

  #root
  root to: 'toppages#index'
  
  #ログイン・ログアウト
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  #新規登録
  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :new, :create]
  resources :middles
  resources :commonnames
  resources :mrs
  resources :surnames
end
