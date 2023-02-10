* Settings *
Documentation       Keywords and variables for the endpoint /carrinhos
Resource            ../../keywords/shopcart_keywords.robot
Resource            ../../keywords/login_keywords.robot
Resource            ../../keywords/users_keywords.robot

Suite Setup         Open Session

* Test Cases *
Test Case 1: POST Empty Shopcart 400
    [tags]      1
    Valid Authorized Static User Login
    Get Empty Static Shopcart Data
    POST Endpoint /carrinhos
    Return Status Code "400"
    Error Message Product Does Not Exists

Test Case 2: POST Shopcart With Product Does Not Exists 400
    [tags]      2
    Valid Authorized Static User Login
    Get Nonexist Product Static Shopcart Data
    POST Endpoint /carrinhos
    Return Status Code "400"
    Error Message Product Does Not Exists

Test Case 3: POST Shopcart With No Products 400
    [tags]      3
    Valid Authorized Static User Login
    Get No Product Static Shopcart Data
    POST Endpoint /carrinhos
    Return Status Code "400"
    Error Message Product Insufficient

Test Case 4: POST Shopcart With Zero Products 400
    [tags]      4
    Valid Authorized Static User Login
    Get Zero Quantity Product Static Shopcart Data
    POST Endpoint /carrinhos
    Return Status Code "400"
    Error Message Product Insufficient

Test Case 5: POST Shopcart With Negative Quantity Products 400
    [tags]      5
    Valid Authorized Static User Login
    Get Negative Quantity Product Static Shopcart Data
    POST Endpoint /carrinhos
    Return Status Code "400"
    Error Message Product Insufficient

Test Case 6: POST Shopcart With Decimal Quantity Products 400
    [tags]      6
    Valid Authorized Static User Login
    Get Decimal Quantity Product Static Shopcart Data
    POST Endpoint /carrinhos
    Return Status Code "400"
    Error Message Product Insufficient

Test Case 7: POST More Than One Shopcart 400
    [tags]      7
    Register Second Authorized User And Save ID
    Second Valid Authorized Static User Login
    Get Valid Static Shopcart Data
    POST Endpoint /carrinhos
    Get Valid Static Shopcart Data
    POST Endpoint /carrinhos
    Return Status Code "400"
    Error Message More Than One Car
    DELETE Endpoint /carrinhos/concluir-compra
    DELETE Endpoint /usuarios

Test Case 8: POST Shopcart With Insufficient Quantity Of Products 400
    [tags]      8
    Valid Authorized Static User Login
    Get Insufficient Quantity Product Static Shopcart Data
    POST Endpoint /carrinhos
    Return Status Code "400"
    Error Message Product Insufficient

Test Case 9: POST Shopcart With Expired Token 401
    [tags]      9
    Create Shopcart With Expired Token
    Return Status Code "401"
    Error Message Token

Test Case 10: DELETE User And POST Shopcart 401
    [tags]      10
    Register Second Authorized User And Save ID
    Second Valid Authorized Static User Login
    DELETE Endpoint /usuarios
    Get Valid Static Shopcart Data
    POST Endpoint /carrinhos
    Return Status Code "401"
    Error Message Token





