*** Settings ***
Documentation    test
Library          Selenium2Library
Library          String
Library          Collections
Resource         ../variable/test.robot

*** Keywords ***
Begin Web Test
    Open Browser                ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed          ${delay}
    Title Should Be             Sharia Securities Crowdfunding | SHAFIQ

Click Daftar Investasi
    Click Element    xpath:/html/body/header/div/nav/div[2]/ul/li[2]/a

Verify Daftar Investasi Page
    Sleep    2
    Element Text Should Be    xpath:/html/body/div[1]/div/div[1]/div/span     Daftar Investasi

Search Investasi
    Sleep    2
    [Arguments]    ${investasi}
    Input Text     xpath:/html/body/div[1]/div/div[3]/div/div[1]/div/input    ${investasi}

Click Search Button
    Click Element    xpath:/html/body/div[1]/div/div[3]/div/div[1]/div/div/button

Verify Investasi
    Sleep    2
    Press Keys                NONE    PAGE_DOWN
    Sleep    1
    Element Text Should Be    xpath:/html/body/div[1]/div/div[4]/div[1]/div[1]/div/div/div[1]/div[2]/a        (ENKR-SMY02) Perluasan Villa Delima Residence dengan Pembangunan 55 Unit Rumah Baru