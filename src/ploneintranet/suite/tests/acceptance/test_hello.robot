*** Settings ***

Resource  plone/app/robotframework/selenium.robot
Resource  plone/app/robotframework/keywords.robot
Resource  ../lib/keywords.robot

Library  Remote  ${PLONE_URL}/RobotRemote

Test Setup  Open test browser
Test Teardown  Close all browsers

*** Test Cases ***

Manager can access dashboard
    Given I'm logged in as a 'Site Administrator'
     and I open the Dashboard
     then I am logged in as site administrator
     and I see the Dashboard

*** Keywords ***

I open the Dashboard
    Go to  ${PLONE_URL}/dashboard.html

I see the Dashboard
    Element should be visible  css=#portlet-news
