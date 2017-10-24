Given("visito la pagina de marcador de inicio") do
    visit('/')
end
  
Then("deberia mostrar un marcador con {string} puntos") do |string|
    last_response.body.should =~ /#{string}/m
end