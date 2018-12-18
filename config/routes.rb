Rails.application.routes.draw do


 # resources :proj_attachments, only: [:create, :destroy]

  resources :projects do
    resources :proj_attachments, only: [:create]
    resources :teams, only: [:create, :destroy] 
  end
  resources :parts do
    resources :part_attachments, only: [:create]
  end
  resources :itens do 
    resources :iten_attachments, only: [:create]
  end
  resources :partners do
    resources :partner_attachments, only: [:create]
  end
  resources :publications do
    resources :publication_attachments, only: [:create]
  end
  resources :activities do
    resources :activity_attachments, only: [:create]
  end
  resources :productors do

  end
  resources :collections do

  end
  resources :teams
    resources :proj_attachments, only: [:destroy]
    resources :activity_attachments, only: [:destroy]
    resources :iten_attachments, only: [:destroy]
    resources :part_attachments, only: [:destroy]
    resources :publication_attachments, only: [:destroy]
    resources :partner_attachments, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects 
  resources :activities 

# PROJECTS STUFF
  root to: 'projects#start'
  post '/add_more_images', to: 'projects#add_more_images'
  get '/listall', to: 'projects#listall'

end
