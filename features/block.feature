Feature: Block page
  Scenario: should show title, summary, and transactions
    Given I'm on page "/block/6524861224470851795"
    Then I should see "Block  6524861224470851795" in "h1" html element
    And I should see table "summary" containing:
      | Transactions  | 103                  |
      | Confirmations | 12425                |
      | Height        | 1                    |
      | Reward        | 0 LSK                |
      | Total Fee     | 0 LSK                |
      | Total Forged  | 0 LSK                |
      | Total Amount  | 100,000,000 LSK      |
      | Timestamp     | 2016/05/24 19:00:00  |
      | Generated by  | 1085993630748340485L |
    And I should see table "transactions" with 50 rows starting with:
      | Transaction ID       | Date                | Sender     | Recipient             | Amount | Fee   | Confirmations |
      |----------------------|---------------------|------------|-----------------------|--------|-------|---------------|
      | 3634383815892709956  | 2016/05/24 19:00:00 | genesis_51 | Delegate registration | 0 LSK  | 0 LSK | Confirmed     |
      | 8038215676969674333  | 2016/05/24 19:00:00 | genesis_2  | Delegate registration | 0 LSK  | 0 LSK | Confirmed     |
      | 12531923965746850440 | 2016/05/24 19:00:00 | genesis_3  | Delegate registration | 0 LSK  | 0 LSK | Confirmed     |
      | 1513655759945413173  | 2016/05/24 19:00:00 | genesis_4  | Delegate registration | 0 LSK  | 0 LSK | Confirmed     |
      | 17128624452873376878 | 2016/05/24 19:00:00 | genesis_5  | Delegate registration | 0 LSK  | 0 LSK | Confirmed     |

  # ignored because it the feature is broken
  @ignore
  Scenario: should show title, summary, and transactions
    Given I'm on page "/block/6524861224470851795"
    When I scroll to "more button"
    And I click "more button"
    Then I should see table "transactions" with 100 rows
