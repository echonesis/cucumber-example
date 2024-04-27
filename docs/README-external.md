# 基於 BDD 影像元件開發規格書範例

## 基本需求

- 基於開發語言安裝 `Cucumber` 套件
- 請建立 `features` 資料夾管理所有功能相關的規格
- 請建立 Gherkin 格式的檔案，列出相關功能(Feature)及對應場景(Scenario)。注意一個功能就產生一個附檔名為`feature`的檔案，一個功能檔案中可以有多個不一樣的場景，但請不要混和多個功能在一個功能檔案中。

## 檔案結構

專案規格請同時置於專案目錄下，以`features`資料夾進行管理。
以下為參考範例：

```
├── [docs]
├── [features]
|      ├── [step_definitions]
|      |      ├── stepdefs.js       # 功能測試步驟的具體實現，也就是feature檔案中的實現
|      ├── [support]                # 選用，環境配置文件或輔助方法放在這邊
|      └── *.feature                # 實際規格功能定義檔案
├── cucumber.js                     # cucumber執行設定
└── *                               # 其他專案檔案
```

## 功能寫法範例

由於本專案根據使用者需求，功能至少包含**案例瀏覽**、**案例掃描**及**案例登打顯示**，以下就這三項功能提供功能寫法範例：

- 案例瀏覽.feature

  ```
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
  ```

- 案例掃描.feature

  ```
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
  ```

- 案例登打顯示.feature

  ```
  Feature: Case Marking and Display

  Scenario: Check Case Status
      Given a specific case ID
      When the system checks the status of the case
      Then the case status should be normal

  Scenario: Verify Marking Position
      Given the case image is displayed
      When the user marks a specific location on the image
      Then the marked position should correspond to the image accurately
  ```

## 參考文獻

1. [Cucumber](https://cucumber.io/)
