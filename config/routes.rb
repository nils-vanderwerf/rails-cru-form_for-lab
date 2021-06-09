Rails.application.routes.draw do
  resources :songs
  resources :genres
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'welcome#index'

    get 'songs/:id' => 'song#show'

    get 'songs/:id/artist' => 'artist#show'

    get 'artists/:id/' => 'artist#show'
    get 'genres/:id/' => 'genre#show'
end
