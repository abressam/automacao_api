* Settings *
Documentation       Creating valid test cases for the endpoint /usuarios
Resource            ../../keywords/users_keywords.robot

Suite Setup         Open Session

* Test Cases *
Test Case 1: GET List All Users 200
    [tags]      1
    GET endpoint /usuarios
    Return Status Code "200"

Test Case 2: GET User By ID 200
    [tags]      2
    Create Valid Dynamic User and Save ID
    GET Endpoint /usuarios/_id
    Return Status Code "200"
    DELETE Endpoint /usuarios

Test Case 3: GET Only Clients Users
    [tags]      3
    ${new_users}        Create User Data        ${100}
    ${register_user}    Post Dynamic Users      ${100}
    ${users}            Get All Users By Authorization
    GET Endpoint /usuarios
    #Log To Console      ${users}
    ${delete_user}      Delete Users            ${register_user}

Test Case 4: PUT edit user by ID 200
    [tags]      4
    Create Valid Dynamic User and Save ID
    Get Valid User To Modified
    PUT Endpoint /usuarios
    GET Endpoint /usuarios/_id
    Return Status Code "200"
    DELETE Endpoint /usuarios

Test Case 5: DELETE Remove Dynamic User 200
    [tags]      5
    Create Valid Dynamic User and Save ID
    DELETE Endpoint /usuarios
    Validate Remove User
    Return Status Code "200"

Test Case 6: DELETE Remove User Does Not Exists 200
    [tags]      6
    DELETE Endpoint /usuarios
    Validate Remove User
    Return Status Code "200"