*** Settings ***
Library         Selenium2Library
Library         String
Library         Collections
Library         BuiltIn
Suite Setup     Set Suite Documentation    test
Resource        ../resources/PO/test.robot

*** Test Cases ***
Search Daftar Investasi
    Begin Web Test
    Click Daftar Investasi
    Verify Daftar Investasi Page
    Search Investasi                ${investasi}
    Click Search Button
    Verify Investasi