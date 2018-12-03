Rails.application.routes.draw do
  # routes
  # HTTP VERBS: get, post,, put, patch, delete

  # verb 'url/path' => 'controller#action' 

  #SHOW Routes
  get 'titles'     => 'titles#index' # Title Index (Show All Titles)
  get 'titles/:id' => 'titles#show', as: 'title', id: /\d+/ # Title Show (Show A Title)
end
