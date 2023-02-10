* Settings *
Documentation       Keywords and variables for the endpoint /usuarios
Resource            ./../support/base/base.robot

* Keywords *
GET Endpoint /usuarios
    ${response}         GET On Session      serverest       /usuarios
    Log to Console      Response:\n ${response.content}
    Set Global Variable    ${response}

GET Endpoint /usuarios/_id
    ${response}         GET On Session      serverest       /usuarios/${user_id}        expected_status=anything
    Log to Console      Response: ${response.content}
    Set Global Variable    ${response}

GET Endpoint /usuarios/_id Does Not Exists
    ${response}         GET On Session      serverest       /usuarios/kdoPI851j     expected_status=anything
    Log to Console      Response: ${response.content}
    Set Global Variable    ${response}

POST Endpoint /usuarios
    ${response}         POST On Session      serverest       /usuarios      json=&{payload}     expected_status=anything
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    ${response}         PUT On Session      serverest       /usuarios/${user_id}      json=&{payload}
    Log to Console      Response: ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /usuarios
    ${response}         DELETE On Session      serverest       /usuarios/${user_id}
    Set Global Variable     ${response}

Error Message User Email
    Should Be Equal      ${response.json()["message"]}       Este email já está sendo usado
    Log To Console      \nResponse: ${response.json()["message"]}

Error Message User Not Found
    Should Be Equal      ${response.json()["message"]}       Usuário não encontrado
    Log To Console      \nResponse: ${response.json()["message"]}

Validate Remove User
    IF      ${response.json()} == {'message': 'Registro excluído com sucesso'}
        Validate Message of Success Remove Register 
    ELSE
        Should Be Equal         ${response.json()["message"]}       Nenhum registro excluído
        Log To Console          ${response.json()["message"]}
    END

Register User Already Exists
    ${json}             Import Static JSON             ./json_user.json
    ${payload}          Set Variable                   ${json["user_already_exists"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios
    Error Message User Email

Create Empty Static User Email
    ${json}             Import Static JSON             ./json_user.json
    ${payload}          Set Variable                   ${json["empty_user_email"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios
    Log To Console          \nResponse: ${response.json()}

Create Empty Static User Password
    ${json}             Import Static JSON             ./json_user.json
    ${payload}          Set Variable                   ${json["empty_user_password"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios
    Log To Console          \nResponse: ${response.json()}

Create Valid Dynamic User and Save ID
    ${payload}          Create Valid User Data
    POST Endpoint /usuarios
    Validate Message Of Success
    ${user_id}           Set Variable       ${response.json()["_id"]}
    Set Global Variable     ${user_id}

Create Valid Dynamic User
    ${payload}          Create Valid User Data
    POST Endpoint /usuarios

Register Unauthorized User And Save ID
    ${json}             Import Static JSON             ./json_user.json
    ${payload}          Set Variable                   ${json["unauthorized_user"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios
    Validate Message Of Success
    ${user_id}           Set Variable       ${response.json()["_id"]}
    Set Global Variable     ${user_id}

Register Second Authorized User And Save ID
    ${json}             Import Static JSON             ./json_user.json
    ${payload}          Set Variable                   ${json["valid_user"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios
    Validate Message Of Success
    ${user_id}           Set Variable       ${response.json()["_id"]}
    Set Global Variable     ${user_id}

Get Valid User To Modified
    ${json}             Import Static JSON             ./json_user.json
    ${payload}          Set Variable                   ${json["valid_user_modified"]}
    Set Global Variable         ${payload}
    Log To Console      Response: ${response.json()}