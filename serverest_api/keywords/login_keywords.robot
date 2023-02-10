* Settings *
Documentation       Keywords and variables for the endpoint /login
Resource            ./../support/base/base.robot

* Keywords *
POST endpoint /login
    ${response}         POST On Session      serverest       /login     json=&{payload}     expected_status=anything
    Set Global Variable     ${response}

Validate Login
    Should Be Equal         ${response.json()["message"]}       Login realizado com sucesso
    Return Status Code "200"
    Log To Console          Response: ${response.json()["message"]}
    Should Not Be Empty     ${response.json()["authorization"]}

Invalid Login Message
    IF      ${response.json()} != {'message': 'Email e/ou senha inválidos'}
        Log To Console      \nMensagem não corresponde a documentação
        Should Be Equal     ${response.json()}      {'message': 'Email e/ou senha inválidos'}
    ELSE
        Should Be Equal     ${response.json()["message"]}       Email e/ou senha inválidos
    END

Do Login And Save Token
    Validate Login
    ${token_auth}           Set Variable         ${response.json()["authorization"]}
    Set Global Variable     ${token_auth}

Valid Authorized Static User Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["valid_user"]}
    Set Global Variable         ${payload}
    POST Endpoint /login
    Do Login And Save Token

Second Valid Authorized Static User Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["user_authorized"]}
    Set Global Variable         ${payload}
    POST Endpoint /login
    Do Login And Save Token

Valid Unauthorized Static User Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["valid_user_unauthorized"]}
    Set Global Variable         ${payload}
    POST Endpoint /login
    Do Login And Save Token

Invalid Email User Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["invalid_user_email"]}
    Set Global Variable         ${payload}
    POST Endpoint /login
    Invalid Login Message

Invalid Password User Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["invalid_user_password"]}
    Set Global Variable         ${payload}
    POST Endpoint /login
    Invalid Login Message

Invalid User Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["invalid_user"]}
    Set Global Variable         ${payload}
    POST Endpoint /login
    Invalid Login Message

Empty User Email Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["empty_user_email"]}
    Set Global Variable         ${payload}
    POST Endpoint /login

Empty User Password Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["empty_user_password"]}
    Set Global Variable         ${payload}
    POST Endpoint /login

Empty User Email And Password Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["empty_user_email_password"]}
    Set Global Variable         ${payload}
    POST Endpoint /login

Empty Spaces User Email Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["empty_spaces_user_email"]}
    Set Global Variable         ${payload}
    POST Endpoint /login

Empty Spaces User Password Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["empty_spaces_user_password"]}
    Set Global Variable         ${payload}
    POST Endpoint /login
    Invalid Login Message

Empty Spaces User Email And Password Login
    ${json}             Import Static JSON             ./json_login.json
    ${payload}          Set Variable                   ${json["empty_spaces_user_email_password"]}
    Set Global Variable         ${payload}
    POST Endpoint /login
