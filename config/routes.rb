Rails.application.routes.draw do
  resources :productors
  resources :collections
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects #do
    #resources :pics #, only: [:create, :destroy]
    #resources :teams 
    #resources :collections 
  #end

# PROJECTS STUFF
  root to: 'projects#index'
end
