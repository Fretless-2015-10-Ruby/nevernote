Feature: Visitor can sign up

  Scenario: Visitor signs up for an account
    # When I visit the home page
    # And I click "sign up"
    When I visit the sign up page
    And I enter my information
    And I click the "Sign Up" button
    Then I should see "Thanks for signing up!"
