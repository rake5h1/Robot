*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.google.com
${browser}  chrome

*** Test Cases ***
Login Test
    set selenium speed  3
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    ${url}    ${browser}
    Maximize Browser Window
    input text  id:APjFqb   twitter
    click element   xpath://input[@class='gNO89b']
    close browser
