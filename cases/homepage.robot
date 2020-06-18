*** Settings ***
Documentation    This test suite it's on the quora question CRUD
Resource    ../resources/keywords/shared/commun.txt     
Test Setup    Run Keywords    Open The Browser To Quora Page    AND    Login Successfuly
Test Teardown    Close The Browser

*** Test Cases ***
# Create A Question
    # [Tags]    QUE_001
    