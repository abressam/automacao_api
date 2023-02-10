* Settings *
Documentation       Keywords and variables for the endpoint /carrinhos
Resource            ./../support/base/base.robot

* Keywords *
GET Endpoint /carrinhos
    ${response}         GET On Session      serverest       /carrinhos  
    Log to Console      Response:\n ${response.content}
    Set Global Variable    ${response}

POST Endpoint /carrinhos
    &{header}           Create Dictionary    Authorization=${token_auth}
    ${response}         POST On Session      serverest       /carrinhos    json=&{payload}       headers=${header}     expected_status=anything
    Set Global Variable     ${response}

DELETE Endpoint /carrinhos/concluir-compra
    &{header}           Create Dictionary    Authorization=${token_auth}
    ${response}         DELETE On Session      serverest       /carrinhos/concluir-compra       json=&{payload}     headers=${header}     expected_status=anything
    Set Global Variable     ${response}

DELETE Endpoint /carrinhos/cancelar-compra
    &{header}           Create Dictionary    Authorization=${token_auth}
    ${response}         DELETE On Session      serverest       /carrinhos/cancelar-compra       json=&{payload}     headers=${header}     expected_status=anything
    Set Global Variable     ${response}

Error Message Product Does Not Exists
    Log To Console      ${response.json()}
    Should Be Equal     ${response.json()["message"]}       Produto não encontrado

Error Message Product Insufficient
    Log To Console      ${response.json()}
    Should Be Equal     ${response.json()["message"]}       Produto não possui quantidade suficiente

Error Message More Than One Car
    Log To Console      ${response.json()}
    Should Be Equal     ${response.json()["message"]}       Não é permitido ter mais de 1 carrinho

Error Message Duplicate Product
    Log To Console      ${response.json()}
    Should Be Equal     ${response.json()["message"]}       Não é permitido possuir produto duplicado

Error Message Token
    Log To Console      ${response.json()}
    Should Be Equal     ${response.json()["message"]}       Token de acesso ausente, inválido, expirado ou usuário do token não existe mais
    
Get Valid Static Shopcart Data
    ${json}             Import Static JSON             ./json_shopcart.json
    ${payload}          Set Variable                   ${json["valid_shopcart"]}
    Set Global Variable         ${payload}

Get Empty Static Shopcart Data
    ${json}             Import Static JSON             ./json_shopcart.json
    ${payload}          Set Variable                   ${json["empty_shopcart"]}
    Set Global Variable         ${payload}

Get Nonexist Product Static Shopcart Data
    ${json}             Import Static JSON             ./json_shopcart.json
    ${payload}          Set Variable                   ${json["product_nonexist_shopcart"]}
    Set Global Variable         ${payload}

Get No Product Static Shopcart Data
    ${json}             Import Static JSON             ./json_shopcart.json
    ${payload}          Set Variable                   ${json["no_products"]}
    Set Global Variable         ${payload}

Get Zero Quantity Product Static Shopcart Data
    ${json}             Import Static JSON             ./json_shopcart.json
    ${payload}          Set Variable                   ${json["zero_quantity_product"]}
    Set Global Variable         ${payload}

Get Negative Quantity Product Static Shopcart Data
    ${json}             Import Static JSON             ./json_shopcart.json
    ${payload}          Set Variable                   ${json["negative_quantity_product"]}
    Set Global Variable         ${payload}

Get Decimal Quantity Product Static Shopcart Data
    ${json}             Import Static JSON             ./json_shopcart.json
    ${payload}          Set Variable                   ${json["decimal_quantity_product"]}
    Set Global Variable         ${payload}

Get Insufficient Quantity Product Static Shopcart Data
    ${json}             Import Static JSON             ./json_shopcart.json
    ${payload}          Set Variable                   ${json["insufficient_product"]}
    Set Global Variable         ${payload}

Create Shopcart With Expired Token
    ${json}             Import Static JSON             ./json_shopcart.json
    ${payload}          Set Variable                   ${json["valid_shopcart"]}
    Set Global Variable         ${payload}
    &{header}           Create Dictionary    Authorization=${EXPIRED_TOKEN}
    ${response}         POST On Session      serverest       /carrinhos    json=&{payload}       headers=${header}     expected_status=anything
    Set Global Variable     ${response}