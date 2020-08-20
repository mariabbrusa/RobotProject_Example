*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Log    I am inside the Test Suite Setup
Suite Teardown    Log    I am inside the Test Suite Teardown
Test Setup    Log    I am inside the Test Setup
Test Teardown    Log    I am inside the Test Tearsdown   

Default Tags    Sanity             

*** Test Cases ***
MyFirstTest
    [Tags]    Smoke
    Log    Hello Word...
    
MySecondTest
    [Tags]    Example
    Log    I am inside second test
    
MyThirdTest
    Log    I am inside third test
    
MyFourTest
    Log    I am inside four test
    
# FisrtSeleniumTest
    # Open Browser      https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text        name=q    Automation step by step        
    # Press Keys        name=q    ENTER  
   
    # #Click Button    name=btnK    
    # Sleep    2
    # Close Browser
    # Log    test completed
    
# SampleLogingTest
     # [Documentation]    This es a sample loging test
     
    # Open Browser      ${URL}     chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element     id=welcome
    # Click Element    link=Logout
    # Close Browser
    # Log              test completed 
    # Log              This test was executed by %{username} on %{os}   
    

# *** Variables ***
# ${URL}    https://opensource-demo.orangehrmlive.com/  
# @{CREDENTIALS}    Admin    admin123
# &{LOGINDATA}    username=Admin    password=admin123      

# *** Keywords ***
# LoginKW
    # Input Text        id=txtUsername    @{CREDENTIALS}[0]
    # Input Password    id=txtPassword    &{LOGINDATA}[password]
    # Click Button      id=btnLogin