#Create game/available games
#AJAX call to update current available games (ping)
get '/game_lobby' do
  @available_games = Game
end

# Create new game
post '/game_lobby/create_game' do 
  @game = Game
  # create game
  redirect "/game/#{@game.id}"
end

#Show game board
#AJAX call to check if turn is up
get '/game/:game_id' do
  @game = Game.find(params[:game_id])
end

# Send move to update current game turn/board
post '/game/:game_id' do 
  @game.update_attributes()
end

# game over, show button go back to lobby


