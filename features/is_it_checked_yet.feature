Feature: Is it checked yet?
  Everybody wants to know if Requirements are met

  Scenario Outline: Requirements are met or not
    Given We get "<image_num>" scanned images for certain "<operation>"
    When I ask whether it's OK
    Then I should get "<answer>"

  Examples:
    | image_num | operation | answer  |
    | 3         | NewCase   | OK      |
    | 2         | Insure    | Waiting |
    | 1         | Modify    | Waiting |
