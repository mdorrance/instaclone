Rails.application.routes.draw do
  get '/search',      to: 'feed#search'
  get '/user_search', to: 'feed#user_search'
  get '/profile',     to: 'users#show'
  get 'feed',         to: 'feed#index'
  get '/logout',      to: 'sessions#destroy'

  get  '/auth/instagram/callback', to: 'sessions#create'
  # get 'landing_pages/show'
  root 'landing_pages#show'

end
