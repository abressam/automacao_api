* Settings *
Documentation       Creating valid test cases for the endpoint /usuarios
Resource            ../../keywords/login_keywords.robot

Suite Setup         Open Session

* Test Cases *
\nTest Case 1: POST Login Static User With Invalid Email 400
    [tags]      1
    Invalid Email User Login
    Return Status Code "400"

\nTest Case 2: POST Login Static User With Invalid Password 400
    [tags]      2
    Invalid Password User Login
    Return Status Code "400"

\nTest Case 3: POST Invalid Static User Login 400
    [tags]      3
    Invalid User Login
    Return Status Code "400"

\nTest Case 4: POST Login Static User With Empty Email 400
    [tags]      4
    Empty User Email Login
    Return Status Code "400"
    Invalid Login Message

\nTest Case 5: POST Login Static User With Empty Password 400
    [tags]      5
    Empty User Password Login
    Return Status Code "400"
    Invalid Login Message

\nTest Case 6: POST Login Static User With Empty Email And Password 400
    [tags]      6
    Empty User Email And Password Login
    Return Status Code "400"
    Invalid Login Message

\nTest Case 7: POST Login Static User With Empty Spaces Email 400
    [tags]      7
    Empty Spaces User Email Login
    Return Status Code "400"
    Invalid Login Message

\nTest Case 8: POST Login Static User With Empty Spaces Password 400
    [tags]      8
    Empty Spaces User Password Login
    Return Status Code "400"
    Invalid Login Message

\nTest Case 9: POST Login Static User With Empty Spaces Email And Password 400
    [tags]      9
    Empty Spaces User Email And Password Login
    Return Status Code "400"
    Invalid Login Message