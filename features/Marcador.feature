Feature:    Como arbitro
            Quiero cambiar el marcador
            Para mostrar los puntos de cada jugador

Scenario:
    Given visito la pagina de marcador de inicio
    Then deberia mostrar un marcador con "0 - 0" puntos

Scenario:
    Given visito la pagina de marcador de inicio
    When marcador este en "0 - 0"
    And presiono boton "jugador1"
    Then deberia mostrar un marcador con "15 - 0" puntos
