Rails.application.routes.draw do
  resources :game_plays
  resources :users
  resources :board_games
  post 'board_games/search', to: 'board_games#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
