*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}       https://propftxdevadmin.iworklab.com/login/
*** Test Cases ***
#LoginTest
#   Open Browser      ${url}  ${browser}
#   Maximize Browser Window
#   Title Should Be       PropFTX Admin
#   ${loginEmail}  Set Variable    //input[@name='loginEmail']
#   Wait Until Page Contains Element           ${loginEmail}
#   Element Should Be Enabled        ${loginEmail}
#   Element Should Be Visible        ${loginEmail}
#   Input Text        ${loginEmail}     rahul.agarwal@mail.vinove.com
#  # Sleep    3
#  #Clear Element Text    ${loginEmail}
#   Sleep    3
#   Input Text        name:password       Admin@1234
#   Click Element      xpath://button[@type='submit']
#   Sleep    1
#
#
#   Reload Page
#LoginTest2
#   #Open Browser      ${url}  ${browser}
#  # Maximize Browser Window
#   Wait Until Page Contains Element           xpath://input[@name='loginEmail']
#   Input Text        name:loginEmail     rahul.agarwall@mail.vinove.com
#   Input Text        name:password       Admin@123
#   Click Element    //button[@type='submit']
#   Sleep    1
#
#   Reload Page
#   Sleep    2

LoginTest3
   Open Browser      ${url}  ${browser}
   Maximize Browser Window
   ${loginEmail}  Set Variable    //input[@name='loginEmail']
   Wait Until Page Contains Element           ${loginEmail}
   Input Text        name:loginEmail     rahul.agarwal@mail.vinove.com
   Input Text        name:password       Admin@123
   Click Element    //button[@type='submit']
   Sleep    1
   ${verify}=  Page Should Contain Element               //span[@class='mr-2']        You have successfully logged in!
   Run keyword if   ${verify}  =   You have successfully logged in!    Test Keyword 1
   Log To Console    successfull login

  # ELSE
  # Log To Console     unsucessfull
#   Page Should Contain Element      class:brand-logo
#   Wait Until Element Is Visible        //span[text()='User Management']
#   Mouse Down    //span[text()='User Management']
#   Mouse Up      //span[text()='User Management']
# #  Sleep
#
#   Go To     https://propftxdevadmin.iworklab.com/transactions
#
#   Reload Page

#UserManagement-PhoneAlreadyExist
#   #Set Selenium Speed    3seconds
#   Wait Until Element Is Visible    xpath://span[text()='User Management']
#   Click Element    xpath://span[text()='User Management']
#   Wait Until Element Is Visible    xpath:(//span[text()='Add'])[1]
#   Click Element    xpath:(//span[text()='Add'])[1]
#   Sleep    10
#   Wait Until Element Is Visible       xpath://h1[text()='Add New User']
#   ${NewUser}=   Page Should Contain Element     xpath://h1[text()='Add New User']     Add New User
#   Run Keyword If  ${NewUser}   =    Add New User     Test Keyword 1
#   Log To Console    title verified
#   Input Text    id:name    Yash test
#   Input Text    id:address    Noida
#   Input Text    id:phoneNumber    9548779463
# #  Sleep    5
#  # Click Element    xpath:(//div[@class='select__input-container css-ackcql'])[1]
# #  Sleep    10
#   Input Text       (//input[@class='select__input'])[1]            Afghanistan
#   #Sleep    3
#
#   Press Keys          xpath://div[text()='Afghanistan']           Tab
# #  Press Key          xpath://div[text()='Afghanistan']           Tab
#   #Sleep    3
#   Input Text       (//input[@class='select__input'])[2]            Balkh
#   #Sleep    3
#   Press Keys          xpath:(//div[text()='Balkh'])[1]          Tab
#  # Sleep    3
#   Input Text       (//input[@class='select__input'])[3]            Balkh
#  # Sleep    3
#   Press Keys          xpath:(//div[text()='Balkh'])[2]           Tab
#   Input Text      xpath://input[@name='email']              yash23@yopmail.com
#   Choose File    id:image   C:/Users/Yash Raj singh/Downloads/download2121.png
#
#  # Execute JavaScript    window.scroll(10, 5000)
#  # Sleep    1
#  # Execute JavaScript    window.scroll(0, 300)
#   Run Keyword And Ignore Error  Scroll Element Into View     //button[text()='Submit']
#   Sleep    1
#   Wait Until Element Is Visible   xpath://button[text()='Submit']
#  # Sleep    2
#   Click Button    xpath://button[text()='Submit']
#   Sleep    1
#   ${PhoneExists} =  Page Should Contain Element     xpath://span[@class='mr-2']    Phone number already exist
#   Run Keyword If  ${PhoneExists}   =      Phone number already exist       Test Keyword 1
#   Log To Console    Validate phone number already exist successfully
#   Reload Page
#
#
#UserManagement-EmailAlreadyExist
#   Wait Until Element Is Visible        xpath://h1[text()='Add New User']
#   Input Text    id:name    Yash test
#   Input Text    id:address    Noida
#   Input Text    id:phoneNumber    9548779462
#   Input Text       (//input[@class='select__input'])[1]            Afghanistan
#   #Sleep    3
#
#   Press Keys          xpath://div[text()='Afghanistan']           Tab
# #  Press Key          xpath://div[text()='Afghanistan']           Tab
#   #Sleep    3
#   Input Text       (//input[@class='select__input'])[2]            Balkh
#   #Sleep    3
#   Press Keys          xpath:(//div[text()='Balkh'])[1]          Tab
#  # Sleep    3
#   Input Text       (//input[@class='select__input'])[3]            Balkh
#  # Sleep    3
#   Press Keys          xpath:(//div[text()='Balkh'])[2]           Tab
#   Input Text      xpath://input[@name='email']              yash9092@yopmail.com
#   Choose File    id:image   C:/Users/Yash Raj singh/Downloads/download2121.png
#
#   Run Keyword And Ignore Error  Scroll Element Into View     //button[text()='Submit']
#   Wait Until Element Is Visible    xpath://button[text()='Submit']
#   Click Button    xpath://button[text()='Submit']
#   Sleep    1
#   ${EmailExists} =  Page Should Contain Element     xpath://span[@class='mr-2']    Email already exist
#   Run Keyword If  ${EmailExists}   =      Email already exist       Test Keyword 1
#   Log To Console    Validate Email already exist successfully
#
#   Sleep    3
#   Reload Page
#UserManagement-UpdateUserDetails
#   Wait Until Element Is Visible    (//span[text()='List'])[1]
#   Click Element    xpath:(//span[text()='List'])[1]
#   Wait Until Element Is Visible    //span[text()='User Management']
#   ${UserManagement}=  Page Should Contain Element    xpath://span[text()='User Management']     User Management
#   Run Keyword If  ${UserManagement}  =  User Management    Test Keyword 1
#   Log To Console    User Management title
#   Wait Until Element Is Visible     //input[@id='search-input']
#   Input Text    id:search-input    yash090600210@yopmail.com
#   Wait Until Element Is Visible    //*[local-name()='svg']//*[local-name()='path' and @d='M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z']
#   Mouse Down       xpath://*[local-name()='svg']//*[local-name()='path' and @d='M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z']
#   Mouse Up         xpath://*[local-name()='svg']//*[local-name()='path' and @d='M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z']
#   Wait Until Element Is Visible     //input[@name='email']
#   Sleep    5
#   Clear Element Text            //input[@name='email']
#  # Click Element    xpath://input[@name='email']
#  # Press Keys  xpath://input[@name='email']    CTRL+A
#   Sleep    5
#   Input Text    xpath://input[@name='email']      yash09060210@yopmail.com
#   Click Element       xpath://h5[text()='Profile Image']
#   Execute Javascript	window.scrollTo(1,document.body.scrollHeight);
#   #Run Keyword And Ignore Error  Scroll Element Into View    xpath://button[text()='Submit']
#   Sleep    3
#   Click Button     xpath://button[text()='Update']
#   #Sleep    2
#
#   Page Should Contain Element     xpath://span[@class='mr-2']     User updated successfully
#
#
#
#   Sleep    12
#
AddNewUser
   Wait Until Element Is Visible        //span[text()='User Management']
   Click Element    //span[text()='User Management']
   Wait Until Element Is Visible    xpath:(//span[text()='Add'])[1]
   Click Element    xpath:(//span[text()='Add'])[1]
   Wait Until Element Is Visible       xpath://h1[text()='Add New User']
   Input Text    id:name    Yash test
   Input Text    id:address    Noida
  # ${phNumber} =    Generate Random String    10   0123456789
  # Input Text    id:phoneNumber    ${phNumber}
  # Generate XYZ Random number






   Sleep    19

*** Keywords ***
Test Keyword 1
  # Log To Console      login successfull
#You have successfully logged in!

login to system
    [arguments]   ${phNumber}