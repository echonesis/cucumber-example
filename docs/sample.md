# BDD Markdown Version

## Scanning

Feature: Is it checked yet?

> We should check all the required images are scanned before uploading them to the target NAS

Scenario Outline: Requirements are met

```
Given We get "<image_num>" scanned images for certain "<operation>"

When I ask whether it's OK

Then I should be told "<answer>"
```

Examples:

| image_num | operation | answer  |
| --------- | --------- | ------- |
| 3         | 新案件    | OK      |
| 2         | 理賠      | Waiting |
| 1         | 補件      | Waiting |

## Exploring

## Configuring

## Typing
