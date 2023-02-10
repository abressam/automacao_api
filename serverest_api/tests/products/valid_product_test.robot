* Settings *
Documentation       Creating valid test cases for the endpoint /usuarios
Resource            ../../keywords/products_keywords.robot
Resource            ../../keywords/login_keywords.robot

Suite Setup         Open Session

* Test Cases *
Test Case 1: GET List All Products 200
    [tags]      1
    GET Endpoint /produtos
    Return Status Code "200"

Test Case 2: Create Product And GET By ID 200
    [tags]      2
    Valid Authorized Static User Login
    Create Dynamic Product
    Save Product ID
    GET Endpoint /produtos/_id
    Return Status Code "200"
    DELETE Endpoint /produtos

Test Case 3: Dynamic Create And Remove Product 200
    [tags]      3
    Valid Authorized Static User Login
    Create Dynamic Product
    Save Product ID
    DELETE Endpoint /produtos
    Return Status Code "200"

Test Case 4: PUT Edit Product 200
    [tags]      4
    Valid Authorized Static User Login
    Create Dynamic Product
    Save Product ID
    Get Valid Product Static Data
    PUT Endpoint /produtos/_id
    Validate Message of Success Change Register
    GET Endpoint /produtos/_id
    Return Status Code "200"
    DELETE Endpoint /produtos