Rails.application.routes.draw do

	#route for show page
  get 'profiles/:id' => 'profiles#show', as: :profile

  #route for index page
 	get 'profiles' => 'profiles#index'
  get 'profiles/show'
  get 'profiles/index'
  get 'profiles/feed'

  resources :tweets
  devise_for :users

  root 'profiles#index'

end