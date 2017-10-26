Feature:    Como arbitro
            Quiero cambiar el marcador
            Para mostrar los puntos de cada jugador

Scenario:
    Given visito la pagina de inicio del marcador de tenis
    Then deberia mostrar "Marcador de tenis"

Scenario:
    Given visito la pagina de inicio del marcador de tenis
    When presiono boton "jugar"
    Then deberia mostrar un marcador "0 - 0"

Scenario:
    Given visito la pagina de inicio del marcador de tenis
    When presiono boton "jugar"
    And visito la pagina de partida
    And presiono boton "jugador1"
    Then deberia mostrar un marcador "15 - 0"

Scenario:
    Given visito la pagina de inicio del marcador de tenis
    When presiono boton "jugar"
    And visito la pagina de partida
    And presiono boton "jugador2"
    Then deberia mostrar un marcador "0 - 15"

Scenario:
    Given visito la pagina de partida
    And presiono boton "reiniciar"
    Then visito la pagina de inicio del marcador de tenis