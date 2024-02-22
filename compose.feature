Feature: To test the compose function of gmail

Scenario: validate "Compose" button is available 
When user logs in  authenticated gmail account
And  redirected to the gmail account page
Then "Compose" button should be displayed or available  in gmail box


Scenario: validate "Compose" button is clickable
When user logs in  authenticated gmail account
And  redirected to the gmail account page
Then "Compose" button should be clickable 


Scenario: Ensure users can create and send a new email successfully
Given user logs in  authenticated gmail account
And  redirected to the gmail account page
When click on "Compose" button
And redirected to the create new email screen
 Then user should create and send a new email successfully 
 
 Scenario Outline: Confirm that users can add multiple recipients to an email
When user redirected to the gmail box
And click on compose button
And navigate to new email box
Then user should be able to add <multiple_recipients> seperated by comma to an email

Examples:
|multiple_recipients|
|user1@example.com|
|user_name@email-provider.net|
|john.doe@company.org|
|user123@email.co.uk|

Scenario: Verify that gmail supports CC and BCC functionality
When user redirected to the gmail account page
And click on compose button
And navigate to new email box
Then gmail supports CC and BCC function
