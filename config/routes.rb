Rails.application.routes.draw do
  root to: 'visitors#index'
  
  get  '/game_rounds/start_game', to: 'game_rounds#start_game'
  get  '/game_rounds/highscores', to: 'game_rounds#highscores'
  get '/game_rounds/checkword', to: 'game_rounds#checkword'
  post '/game_rounds/play_boggle', to: 'game_rounds#play_boggle'
  
end
