Rails.application.routes.draw do
  post '/search', to: 'feed#search'
  post '/user_search', to: 'feed#user_search'
  get '/users/show'

  get '/users/index'

  get '/feed/index'

  get '/feed/show'
  get  '/logout', to: 'sessions#destroy'

  get  '/auth/instagram/callback', to: 'sessions#create'
  # get 'landing_pages/show'
  root 'landing_pages#show'

end
