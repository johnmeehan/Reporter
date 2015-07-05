# Reporter
John Meehan


## 1. Cron Job (set to run every 2 hours)
To view the cron job I set up in config/schedule.rb

run:
```shell
whenever
```

To write the job to crontab
```shell
rake cronjob
```
*OR*
```shell
whenever -w
```

To view it
```shell
crontab -e
```
---

## 2. To import from CSV via rake task
Rake Task:  `rake parse_csv`

### 3. Defualt Username & Password
Username: `admin`
Password: `password`


### Assumptions!!
  1. Input file for parsing is placed in /lib/input/input.csv
  2. A new file replaces input.csv
  3. Cron Job runs the rake task every 2 hours.  (see /config/schedule.rb)
  4. ElasticSearch is not used for persistence. Just for search and retrieval.



# Task

Write a script that will:

- [x] Create a cron job run a rake task that:
  - [x]  a) Parses the provided csv file.
  - [x]  b) Creates a database record for the row.


- [x] Each record should be editable within the rails app.
- [x] Each update of the record should create a new record with a new version.

- [x] Each record should know how to update ElasticSearch with its data.

Create page that:
  - [x] Displays a table of the information,
  - [x] Sortable by each column header.
  - [x] This table should only display the most recent version of each record.

- [x] All data for the table should be pulled directly from ElasticSearch.
- [x] The table should be paginated to twenty rows per page.

- [x] Create another page with basic authentication.
- [x] This page should allow the user to set what columns display in the table based on the fields available in ElasticSearch.


- [x] All times in the csv are in UTC, they should display in Mountain Time and the format:

December 2, 1986
