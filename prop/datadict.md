# Data Dictionary

| Source File |
| :--- |
| NYC\_311\_SR\_2010-2020-sample-1M.csv |

## Unique Key

| Label | Type |
| :--- | :--- |
| Record Identifier | Integer |

### Description

A unique numeric identifier for each complaint record. It is the primary key in the dataset and has 1,000,000 distinct values (100% uniqueness).

### Statistics

| Min | Max | Cardinality | Null Count |
| ---: | ---: | ---: | ---: |
| 11465364 | 48478173 | 1000000 | 0 |

## Created Date

| Label | Type |
| :--- | :--- |
| Complaint Creation Timestamp | DateTime |

### Description

UTC timestamp indicating when a 311 service request was logged. The dates span from January 1 2010 to December 23 2020 with a mean around November 10 2015. Approximately 84% of records have missing values.

### Statistics

| Min | Max | Cardinality |
| ---: | ---: | ---: |
| 2010-01-01T00:00:00+00:00 | 2020-12-23T01:25:51+00:00 | 841014 |

…

## Status

| Label | Type |
| :--- | :--- |
| Complaint Status | String |

### Description

Current processing status—Closed, Pending, Open, etc. Closed complaints dominate (~95 %), with small percentages remaining pending or open.

### Choices

| Value |
| :--- |
| Assigned |
| Closed |
| Closed - Testing |
| Email Sent |
| In Progress |
| Open |
| Pending |
| Started |
| Unassigned |
| Unspecified |

### Statistics

| Cardinality |
| ---: |
| 10 |

| Choice | Frequency |
| :--- | ---: |
| Pending | 20119 |
| Open | 12340 |
| In Progress | 7841 |
| Assigned | 6651 |

