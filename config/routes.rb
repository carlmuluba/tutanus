Rails.application.routes.draw do
  resources :projects  do
      resources :images, :only => [:create, :destroy]
  end
  resources :partners
  resources :publications
  resources :activities
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
  root to: 'projects#start'
end
