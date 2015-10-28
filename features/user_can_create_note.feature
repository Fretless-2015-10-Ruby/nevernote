Feature: User can create note

  Scenario: User creates note
    When I visit the "new note" page
    And I enter "Groceries" into "title"
    And I enter "Milk and bread" into "body"
    And I click the "Save" button
    Then I should see "Saved!"
    And I should see "Groceries" in the note list
