*** Settings ***
Library    DatabaseLibrary

*** Variables ***
${DB_NAME}          iot_om
${DB_USER}          root
${DB_PASSWORD}      password
${DB_HOST}          10.100.8.135
${DB_PORT}          3306

*** Test Cases ***
Connect To MySQL
    Connect To Database    pymysql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
    @{results}=    Query    SELECT * FROM customer_node_type;
    Log Many    ${results}
    Disconnect From Database
