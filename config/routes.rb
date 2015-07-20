Rails.application.routes.draw do

  get 'dogs/create'

  get 'conversations/:id' => 'conversations#show'

  post 'sessions' => 'sessions#create'

  delete 'sessions/:id' => 'sessions#destroy'

  # root 'users#index'

  get 'users' => 'users#index'

  get 'users/:id' => 'users#show'

  post 'users' => 'users#create'

  post 'dogs' => 'dogs#create'

  patch 'users/:id' => 'users#update'

  delete 'users/:id' => 'users#destroy'

  get 'messages' => 'messages#index'

  post 'messages' => 'messages#create'

end
