Rails.application.routes.draw do
  # routes
  # HTTP VERBS: get, post,, put, patch, delete

  # verb 'url/path' => 'controller#action' 

  #SHOW Routes
  get 'titles'     => 'titles#index' # Title Index (Show All Titles)
  get 'titles/:id' => 'titles#show', as: 'title', id: /\d+/ # Title Show (Show A Title)

  #CREATE Routes
  get 'titles/new' => 'titles#new', as: 'new_title'
  post 'titles' => 'titles#create'

  #UPDATE Routes
  get 'titles/:id/edit' => 'titles#edit', as: 'edit_title', id: /\d+/
  patch 'titles/:id' => 'titles#update'

  root to: 'titles#index'
end
