Rails.application.routes.draw do
  get 'songs/index'

  get 'songs/create'

  get 'songs/update'

  get 'songs/show'

  get 'genres/index'

  get 'genres/create'

  get 'genres/update'

  get 'genres/show'

  get 'artists/index'

  get 'artists/create'

  get 'artists/update'

  get 'artists/show'

  resources :songs
  resources :genres
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
