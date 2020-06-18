*** Settings ***
Documentation    Suite test about the login functionality (positive and negative tests)
Resource    ../resources/keywords/loginpage_keywords.txt
Test Setup    Open The Browser To Quora Page
Test Teardown    Close The Browser


*** Test Cases ***
Valid Login
    [Tags]    login_001
    Set The Login Email
    Set The Password    
    Click On Connexion Button
    Check The Home Page Title 
    
Invalid Login - Login Email Incorrect
    [Tags]    login_002    INV
    Set An Invalid Login Email
    Click On Connexion Button
    Check The Error Message - Email Not Found
      
Invalid Login - Password Incorrect
    [Tags]    login_003    INV
    Set The Login Email
    Set An Invalid Password
    Click On Connexion Button
    Check The Error Message - Password Incorrect
    