Rails.application.routes.draw do
  resources :users

  root to: 'visitors#index'

  get '/auth/:provider/callback' => 'sessions#create'

  get '/signintwitter' => 'sessions#newtwitter', :as => :signintwitter
  get '/signingoogle' => 'sessions#newgoogle', :as => :signingoogle
  get '/signinfacebook' => 'sessions#newfacebook', :as => :signinfacebook
  get '/signintumblr' => 'sessions#newtumblr', :as => :signintumblr

  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

end
