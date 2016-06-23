Rails.application.routes.draw do

  resources :profiles, except: [:new, :edit]
  # Cohort Routes
  resources :cohorts, except: [:new, :edit]
  # Program Routes
  resources :programs, except: [:new, :edit]

  # User Routes
  resources :users, only: [:index, :show]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  # Example Routes
  resources :examples, except: [:new, :edit]
end
