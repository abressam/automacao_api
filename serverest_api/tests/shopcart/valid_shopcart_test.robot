* Settings *
Documentation       Keywords and variables for the endpoint /carrinhos
Resource            ../../keywords/shopcart_keywords.robot
Resource            ../../keywords/login_keywords.robot

Suite Setup         Open Session

* Test Cases *
Test Case 1: GET List All Shopcarts 200
    [tags]      1
    GET Endpoint /carrinhos
    Return Status Code "200"

Test Case 2: POST Create Shopcart And Complete Shop 200
    [tags]      2
    Valid Authorized Static User Login
    Get Valid Static Shopcart Data
    POST Endpoint /carrinhos
    Validate Message Of Success
    DELETE Endpoint /carrinhos/concluir-compra
    Validate Message of Success Remove Register
    Return Status Code "200"

Test Case 3: POST Create Shopcart And Cancel Shop 200
    [tags]      3
    Valid Authorized Static User Login
    Get Valid Static Shopcart Data
    POST Endpoint /carrinhos
    Validate Message Of Success
    DELETE Endpoint /carrinhos/cancelar-compra
    Validate Message of Success Remove Register
    Return Status Code "200"