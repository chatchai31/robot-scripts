*** Settings ***
Library  RequestsLibrary

*** Variables ***
${BASE_URL}    http://10.100.8.139:8080

*** Test Cases ***
Query Balance on apiconverter
    # Create the API Session
    Create Session    apiconv_session    ${BASE_URL}

    # Define Query Parameters
    ${params}    Create Dictionary    msisdn=66830131576    transaction_id=Test202510271427

    # Make the API Request
    ${response}    GET On Session    apiconv_session    /queryBalance    params=${params}

    # Log Response Details
    Log    ${response.status_code}
    Log    ${response.content}
