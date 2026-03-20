# Dataset 311 NYC Data

| Resource | Table | Title |
| --- | --- | --- |
| NYC\_311\_SR\_2010-2020-sample-1M.csv | 311nyc | NYC 311 Data 1M row sample |

311 NYC dataset example

# Table 311nyc

| Column | Type | Label |
| --- | --- | --- |
| Unique Key | integer required | Record Identifier |
| Created Date | timestamp required | Complaint Creation Timestamp |
| Status | text required | Complaint Status |

| Primary key |
| --- |
| Unique Key |

## Column Unique Key

A unique numeric identifier for each complaint record. It is the primary key in the dataset and has 1,000,000 distinct values (100% uniqueness).

## Column Created Date

UTC timestamp indicating when a 311 service request was logged. The dates span from January 1 2010 to December 23 2020 with a mean around November 10 2015. Approximately 84% of records have missing values.

## Column Status

Current processing status—Closed, Pending, Open, etc. Closed complaints dominate (~95 %), with small percentages remaining pending or open.

### Choices

- Assigned
- Closed
- Closed - Testing
- Email Sent
- In Progress
- Open
- Pending
- Started
- Unassigned
- Unspecified

# Resource NYC\_311\_SR\_2010-2020-sample-1M.csv

## Statistics

| Column | Min | Max | Cardinality | Null Count |
| --- | ---: | ---: | ---: | ---: |
| Unique Key | 11465364 | 48478173 | 1000000 | 0 |
| Created Date | 2010-01-01T00:00:00+00:00 | 2020-12-23T01:25:51+00:00 | 841014 | 0 |
| Status | Assigned | Unspecified | 10 | 0 |

### Frequency for Status

| Choice | Frequency |
| :--- | ---: |
| Pending | 20119 |
| Open | 12340 |
| In Progress | 7841 |
| Assigned | 6651 |
