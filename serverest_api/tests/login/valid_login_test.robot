* Settings *
Documentation       Creating valid test cases for the endpoint /usuarios
Resource            ../../keywords/login_keywords.robot
Resource            ../../keywords/users_keywords.robot

Suite Setup         Open Session

* Test Cases *
Test Case 1: POST Valid Authorized Static User Login 200
    [tags]      1
    Valid Authorized Static User Login
    Return Status Code "200"

Test Case 2: POST Valid Unauthorized Static User Login 200
    [tags]      2
    Register Unauthorized User And Save ID
    Valid Unauthorized Static User Login
    Return Status Code "200"
    DELETE Endpoint /usuarios