*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Login with correct Username and Password
    Open Browser    url=https://stg-efishgator.efishery.ai/    browser=chrome
    Sleep    time_=5s    reason=Nunggu page
    Input Text    username    enterprise.1.atesting@efishery.com
    Input Text    password    P@ssw0rd123
    Click Element    xpath://button[text()='Masuk']
    Sleep    time_=3s    reason=Nunggu header
    Element Should Contain    id=title-header    Order Fraud
    Click Button    class:button-logout
    Sleep    time_=5s    reason=validate logout
    Close Browser

Add Tasks And Set To Complete
    Open Browser    url=https://todomvc.com/examples/angular/dist/browser/#    browser=chrome
    Input Text    css:.new-todo    Complete Robot Framework Training
    Press Keys    css:.new-todo    RETURN
    Input Text    css:.new-todo    Write Automated Tests
    Press Keys    css:.new-todo    RETURN
    Input Text    css:.new-todo    Take a nap
    Press Keys    css:.new-todo    RETURN
    Element Text Should Be    class:todo-count    3 items left
    Click Element    xpath: //*[contains(text(), "Complete Robot Framework Training")]/../input
    Element Text Should Be    class:todo-count    2 items left
    Click Element    xpath: //*[contains(text(), "Write Automated Tests")]/../input
    Element Text Should Be    class:todo-count    1 item left
    Click Element    xpath: //*[contains(text(), "Take a nap")]/../input
    Element Text Should Be    class:todo-count    0 items left
