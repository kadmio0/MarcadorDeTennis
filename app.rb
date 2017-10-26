require 'sinatra'


get '/' do
    erb :Principal_view
end


post '/partida' do
    @p1="0"
    @p2="0"
    erb :Marcador_view
end

get '/partida' do
    erb :Marcador_view
end

post '/puntoParaJugador1' do
    @p1 = params[:puntaje1]
    @p2 = "0"
    @p1 = (@p1.to_i + 15).to_s
    erb :Marcador_view
end

post '/puntoParaJugador2' do
    @p1 = "0"
    @p2 = params[:puntaje2]
    @p2 =(@p2.to_i + 15).to_s
    erb :Marcador_view
end
