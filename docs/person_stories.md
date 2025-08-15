# Persons

- Name: Memo, 37, Baker in Buxtehude, he's is a hardworking man, barely at home but at the end of the month he has barely any money in his bank account and want to know why 
- Goal: See his monthly spending, know where he spends the most money --> wants to improve his finances
---
1.  - As Memo I want my transactions to be auto-categorized, so I can see where I spent the most money 
    - DoD:
        - Given I uploaded a CSV with merchant and amount
        When I open the dashboard
        Then I see spend grouped by category for the latest month
        And at least 80% of rows have a category with confidence ≥ 0.6
---
2.  - As Memo I want anomalies flagged, so I can verify suspicous transactions
    - DoD:
        - Given my monthly transactions are processed <br>
        When an amount is statistically unusual for my history <br>
        Then it appears in an “Anomalies” list with a score and short reason
---
3.  - As Memo I want short precise monthly/yearly insights
    - DoD:
        - Given at least two months of data <br>
        When I open “Insights” <br>
        Then I see a delta like “You spent 18% more on Dining than last month” <br>
---
4.  - As Memo I want to be able to export my Data as CSV/PDF
    - DoD:
        - Given at least one month of data <br>
        When I click on the export-button <br>
        Then I can decide the type and format of the file I want to export (CSV, PDF)
---
5.  - As Memo I want to be able to upload my finance Data (CSV) either using the Dashboard-GUI or an API 
    - DoD:
        - Given my transactions as a CSV <br>
        When I click on "Upload" or query the API <br>
        Then my transactions get automatically proccessed and uploaded to the Dashboard
--- 
6.  - As Memo I want to be able to receive any notification as an E-Mail
    - DoD:
        - Given I activate the notification option (e.g. for insights or anomalies) <br>
        When I click a checkbox under "Notification" <br>
        Then I receive the notification to my specified Email
        