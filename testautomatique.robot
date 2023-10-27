*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://bdeb.omnivox.ca/Login/Account/Login?ReturnUrl=%2fintr%2f
${browser}    Chrome
${Identifiant}    2343123
${id}    Canada2023


*** Test Cases ***
tc01 login
    Open Browser    ${url}    ${browser}   
    Maximize Browser Window    
    Input Text      id:Identifiant    ${Identifiant}
    Input Password    id:Password    ${id}
    Click Button    xpath://*[@id="formLogin"]/div[4]/div/button
    Sleep    3


*** Keywords ***