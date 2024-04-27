Feature: Case Scanning

  Scenario: Confirm Case Existence in Database
    Given a specific case ID
    When the system checks the database for the case
    Then the case should exist in the database

  Scenario: Check Scanner Functionality
    Given the scanning machine is turned on
    When a test scan is initiated
    Then the scanner should be operational

  Scenario: Scan Success
    Given the scanner is operational
    When the operator scans a document
    Then the scanning process should be successful

  Scenario: Upload Success
    Given the scanning process is successful
    When the operator uploads the scanned document
    Then the document should be uploaded successfully