require 'sinatra'
require "./lib/TennisGame.rb"


juegoDeTenis = TennisGame.new
get '/' do
    erb :Principal_view
end


post '/partida' do
    juegoDeTenis = TennisGame.new
    @marcador = juegoDeTenis.getScore()
    erb :Marcador_view
end

get '/partida' do
    erb :Marcador_view
end

post '/puntoParaJugador1' do
    juegoDeTenis.pointToPlayer(1)
    @marcador = juegoDeTenis.getScore()
    erb :Marcador_view
end

post '/puntoParaJugador2' do
    juegoDeTenis.pointToPlayer(2)
    @marcador = juegoDeTenis.getScore()
    erb :Marcador_view
end

post '/reiniciar' do
    redirect '/'
end
