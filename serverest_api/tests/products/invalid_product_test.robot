* Settings *
Documentation       Creating valid test cases for the endpoint /usuarios
Resource            ../../keywords/products_keywords.robot
Resource            ../../keywords/login_keywords.robot
Resource            ../../keywords/users_keywords.robot

Suite Setup         Open Session

* Test Cases *
Test Case 1: POST Create Product Using Expired Authorization 401
    [tags]      1
    Create Product Using Expired Token
    Return Status Code "401"

\nTest Case 2: POST Create Product Using Unauthorized User 403
    [tags]      2
    Register Unauthorized User And Save ID
    Valid Unauthorized Static User Login
    Get Valid Product Static Data
    POST Endpoint /produtos
    Validate Administrador Rode
    Return Status Code "403"
    DELETE Endpoint /usuarios

\nTest Case 3: GET Product ID Does Not Exists 400
    [tags]      3
    Valid Authorized Static User Login
    Create Dynamic Product      
    Save Product ID
    DELETE Endpoint /produtos
    GET Endpoint /produtos/_id
    Error Message Product Not Found
    Return Status Code "400"

\nTest Case 4: PUT Edit Product Same Name 400
    [tags]      4
    Valid Authorized Static User Login
    Create Dynamic Product       
    Save Product ID
    Get Product Already Exists Static Data
    PUT Endpoint /produtos/_id
    Error Message Product Already Exists
    Return Status Code "400"
    DELETE Endpoint /produtos

\nTest Case 5: PUT Edit Product Without Authorization 403
    [tags]      5
    Register Unauthorized User And Save ID
    Valid Unauthorized Static User Login
    PUT Endpoint /produtos/_id Static ID
    Return Status Code "403"
    DELETE Endpoint /usuarios

\nTest Case 6: PUT Edit Product With Expired Token 401
    [tags]      6
    Get Valid Product Static Data
    Edit Product Using Expired Token
    Invalid Create Product
    Return Status Code "401"

