Feature: Case Browsing

  Scenario: Check Case Existence in Database
    Given a specific case ID
    When the system searches for the case in the database
    Then the case should exist in the database

  Scenario: Retrieve Case Image
    Given the case exists in the database
    When the user requests the image associated with the case
    Then the image should be successfully retrieved

  Scenario: Display Success
    Given the case image is retrieved successfully
    When the image is displayed on the screen
    Then the image should be displayed successfully