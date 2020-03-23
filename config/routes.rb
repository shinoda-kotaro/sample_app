Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#top画面
  get 'top' => 'homes#top'
#todolistsへの新規投稿
  post 'todolists' => 'todolists#create'
#todolistsの投稿一覧画面
  get 'todolists' => 'todolists#index'
#todolistsの投稿詳細画面
  get 'todolists/:id' => 'todolists#show', as:'todolist'
end
