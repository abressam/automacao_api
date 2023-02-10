* Settings *
Documentation       Keywords and variables for the endpoint /produtos
Resource            ./../support/base/base.robot

* Keywords *
GET Endpoint /produtos
    ${response}         GET On Session      serverest       /produtos
    Log to Console      \n\n${response.content}
    Set Global Variable    ${response}

GET Endpoint /produtos/_id
    ${response}         GET On Session      serverest       /produtos/${product_id}         expected_status=anything
    Set Global Variable    ${response}
    Log to Console      \n\n${response.content}

POST Endpoint /produtos
    &{header}           Create Dictionary    Authorization=${token_auth}
    ${response}         POST On Session      serverest       /produtos    data=&{payload}       headers=${header}     expected_status=anything  
    Set Global Variable     ${response}
    
PUT Endpoint /produtos/_id
    &{header}           Create Dictionary    Authorization=${token_auth}
    ${response}         PUT On Session      serverest       /produtos/${product_id}      headers=${header}      json=&{payload}     expected_status=anything
    Set Global Variable     ${response}
    Log To Console      \n\n${response.content}

PUT Endpoint /produtos/_id Static ID
    &{header}           Create Dictionary    Authorization=${token_auth}
    ${response}         PUT On Session      serverest       /produtos/K6leHdftCeOJj8BJ      headers=${header}      json=&{payload}     expected_status=anything
    Set Global Variable     ${response}
    Log To Console      \n\n${response.content}

DELETE Endpoint /produtos
    &{header}           Create Dictionary    Authorization=${token_auth}
    ${response}         DELETE On Session      serverest       /produtos/${product_id}       headers=${header}      expected_status=anything 
    Set Global Variable     ${response}
    Validate Message of Success Remove Register

Validate Administrador Rode
    Should Be Equal         ${response.json()["message"]}       Rota exclusiva para administradores
    Log To Console          \nResponse: ${response.json()["message"]}

Invalid Create Product
    Should Be Equal         ${response.json()["message"]}       Token de acesso ausente, inválido, expirado ou usuário do token não existe mais
    Log To Console          \nResponse: ${response.json()["message"]}

Error Message Product Not Found
    Should Be Equal         ${response.json()["message"]}       Produto não encontrado
    Log To Console          \nResponse: ${response.json()["message"]}

Error Message Product Already Exists
    Should Be Equal         ${response.json()["message"]}       Já existe produto com esse nome
    Log To Console          \nResponse: ${response.json()["message"]}

Create Dynamic Product
    ${payload}              Create Valid Product Data
    POST Endpoint /produtos
    Validate Message Of Success

Save Product ID
    ${product_id}           Set Variable       ${response.json()["_id"]}
    Set Global Variable     ${product_id}

Create Product Using Expired Token
    &{header}           Create Dictionary           Authorization=${EXPIRED_TOKEN}
    &{payload}              Create Valid Product Data
    ${response}         POST On Session      serverest       /produtos    data=&{payload}       headers=${header}    expected_status=anything   
    Set Global Variable     ${response}
    Invalid Create Product

Edit Product Using Expired Token
    &{header}           Create Dictionary           Authorization=${EXPIRED_TOKEN}
    Get Valid Product Static Data
    ${response}         PUT On Session      serverest       /produtos/K6leHdftCeOJj8BJ      headers=${header}      json=&{payload}     expected_status=anything
    Set Global Variable     ${response}

Get Valid Product Static Data
    ${json}             Import Static JSON             ./json_product.json
    ${payload}          Set Variable                   ${json["valid_product"]}
    Set Global Variable         ${payload}

Get Product Already Exists Static Data
    ${json}             Import Static JSON             ./json_product.json
    ${payload}          Set Variable                   ${json["product_already_exists"]}
    Set Global Variable         ${payload}