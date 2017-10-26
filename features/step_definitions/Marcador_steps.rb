Given("visito la pagina de inicio del marcador de tenis") do
    visit('/')
end
  
Then("deberia mostrar {string}") do |string|
    last_response.body.should =~ /#{string}/m
end
  
When("presiono boton {string} una vez") do |string|
    click_button(string)
end
  
Then("deberia mostrar un marcador {string}") do |string|
    last_response.body.should =~ /#{string}/m
end

Given("visito la pagina de partida") do
    visit('/partida')
end
  
When("presiono boton {string}") do |string|
    click_button(string)
end
Then("visito la pagina  de punto para jugador 1") do
    visit('/puntoParaJugador1')
end

Then("visito la pagina  de punto para jugador 2") do 
    visit('/puntoParaJugador2')
end