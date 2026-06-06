Feature: Validación del botón "Explorar" y navegación en YouTube
  @test
  Scenario: Validar navegación hasta la categoria de música
    Given el usuario está en la página principal de YouTube
    When haces clic en el botón "Busqueda"
    Then Escribe el termino "Rock"
    And Pulsa el botón de Busqueda
    Then Deberia visualizarse resultados con el termino Rock

  Scenario: Validar inicio de sesión en Youtube
    Given EL usuario está en la pagina principal de Youtube
    When Hace clic en el botón de inicio de sesión
    Then Deberia haber pagina de inicio de sesión con correo electronico
    When El usuario llena el campo correo electronico con email valido
    And Pulso el boton de siguiente
    Then Deberia ver la pagina de inicio de sesion con contraseña
    When El usuario llena el campo de contraseña con password valida
    And Pulso el boton de siguiente

  Scenario Outline:
    Given El usuario está en la pagina principal de Youtube
    When Hace clic en el botón de inicio de sesión
    Then Deberia haber pagina de inicio de sesión con correo electronico
    When El usuario llena el campo correo electronico con "email" off "valid email"
    And Pulso el boton de siguiente
    Then Deberia ver la pagina de inicio de sesion con contraseña
    When El usuario llena el campo de contraseña con "password" off "valid password"
    And Pulso el boton de siguiente

    Examples:
      | email                 | password     | email_type    | password_type    |
      | leonel48806@gmail.com | leonel123.   | valid_email   | valid_password   |
      | leonel@gmail.com      | leonel123##. | invalid_email | invalid_password |