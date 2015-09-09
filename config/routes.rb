Rails.application.routes.draw do
  get 'users/show'

  get 'users/index'

  get 'feed/index'

  get 'feed/show'

  get  '/auth/instagram/callback', to: 'sessions#create'
  # get 'landing_pages/show'
  root 'landing_pages#show'

end
