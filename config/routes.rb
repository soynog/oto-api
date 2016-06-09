Rails.application.routes.draw do
  # resources :invitations, except: [:new, :edit]
  resources :trips, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  resources :invitations, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  post '/trips/:id/invite' => 'trips#invite'
end
