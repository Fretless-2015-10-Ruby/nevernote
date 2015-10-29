Feature: User can update note

  Background: A user has existing notes
    Given I have a note called "My note"

  Scenario: User updates note
    When I visit the "edit note" page for "My note"
    And I change the title
    And I change some body text
    And I click the "Update Note" button
    Then I should see "Saved!"
    # And I should see my note in the list
