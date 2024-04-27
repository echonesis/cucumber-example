Feature: Case Marking and Display

  Scenario: Check Case Status
    Given a specific case ID
    When the system checks the status of the case
    Then the case status should be normal

  Scenario: Verify Marking Position
    Given the case image is displayed
    When the user marks a specific location on the image
    Then the marked position should correspond to the image accurately