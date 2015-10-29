Feature: User can create note

  Scenario: User creates note
    When I visit the "new note" page
    And I enter a title
    And I enter some body text
    And I click the "Create Note" button
    Then I should see "Your note has been created!"
    # And I should see my note in the list
