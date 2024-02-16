Feature: Validacion de Login


Background: Pre condiciones
        Given El usuario tiene una cuenta ya creada
       


    Scenario Outline: Validar un login exitoso cuando ingrese credenciales correctas
        When El usuario ingresa <usuario> en el campo usuario
        And El usuario ingresa <clave> en el campo password
        And El usuario da click el boton de login
        Then El usuario espera que se muestre ' <logout_option>'
        Examples:
            | usuario               | clave     | logout_option |
            | jovita2024@gmail.com  | Dios123   | Logout        |

    Scenario Outline: Validar Login incorrecto, cuando se ingresa credenciales incorrectas
        When El usuario ingresa <usuario> en el campo usuario
        And El usuario ingresa <clave> en el campo password
        And El usuario da click el boton de login
        Then El usuario verifica el mensaje '<error_message>'
        Examples:
            | usuario            | clave         | error_message                        |
            | xxxx@gmail.com     | xxxxt@2023    | Your email or password is incorrect! |
            | pepitoa@gmail.com  | pepito123     | Your email or password is incorrect! |
           