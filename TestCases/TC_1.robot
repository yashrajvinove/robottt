*** Settings ***


Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***

LoginTest
   Open Browser      https://propftxdevadmin.iworklab.com/login/  chrome
   Maximize Browser Window
   Wait Until Page Contains Element          xpath://*[@id="root"]/div[1]/div/div/div/div/div/div[2]/div/form/div[1]/input

   Input Text        name:loginEmail     rahul.agarwal@mail.vinove.com
   Input Text        name:password       Admin@123
   Click Element    xpath://*[@id="root"]/div[1]/div/div/div/div/div/div[2]/div/form/button


   Close Browser

*** Keywords ***
