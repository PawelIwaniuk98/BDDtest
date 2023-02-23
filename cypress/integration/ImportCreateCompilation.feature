Feature: User can create new Compilation during import

    Background: Log in as registered user
        Given Go to Artbutler Login page 
        And Validate that Artbutler Login page is loaded
        And Fill Login form with email and password by registered user and click Login button
        Then Validate that Dashboard page is loaded
  
    Scenario: Creating Compilation during the import
        Given Sidebar Menu is opened and Imports option is visible
        When Click Imports option from sidebar Menu
        And Validate that Imports page is loaded
        And Upload the "CypressImport.zip" file
        And Fill in the import form with "Compilation" as Import type
        And Click Start import button 
        And Validate that import ended successful
        And Press See CES
        And Validate the "Compilation" edit form
        Then Validate the added Works
