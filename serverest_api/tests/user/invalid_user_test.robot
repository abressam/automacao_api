* Settings *
Documentation       Creating invalid test cases for the endpoint /usuarios
Resource            ../../keywords/users_keywords.robot

Suite Setup         Open Session

* Test Cases *
Test Case 1: POST User Already Exists 400
    [tags]      1
    Register User Already Exists
    Return Status Code "400"

Test Case 2: POST Create Empty User Email 400
    [tags]      2
    Create Empty Static User Email
    Return Status Code "400"
    Error Message User Email

Test Case 3: POST Create Empty User Password 400
    [tags]      3
    Create Empty Static User Password
    Return Status Code "400"
    Error Message User Email

Test Case 4: GET User Not Found By ID 400
    [tags]      4
    GET Endpoint /usuarios/_id Does Not Exists
    Error Message User Not Found
    Return Status Code "400"
