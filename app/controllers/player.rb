post '/signup' do 
  @player = Player.create(params[:player])
  session[:player_id] = @player.id
  redirect '/game_lobby'
end

post '/login' do 
  @player = Player.find_by_name(params[:name])
  if @player && @player.authenticate(params[:password])
    session[:player_id] = @player.id
    redirect '/game_lobby'
  else
    redirect '/'
  end
end

get '/logout' do 
end

