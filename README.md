# Reporter
John Meehan


## Cron Job (set to run every 2 hours)
To view the cron job set up in config/schedule.rb
run `whenever`

To write it to crontab

run `rake cronjob`
*OR*
run `whenever -w`

To view it
`crontab -e`


## To import from CSV via rake task
Rake Task:  `rake parse_csv`

## Password
Password: `password`


### Assumptions!!
  1. Input file for parsing is placed in /lib/input/input.csv
  2. A new file replaces input.csv
  3. Cron Job runs the rake task every 2 hours.  (see /config/schedule.rb)
  4. ES not used for persistance.



# Task

Write a script that will create a cron job run a rake task that:
  a) Parses the provided csv file.
  b) Creates a database record for the row.

Each record should be editable within the rails app.
Each update of the record should create a new record with a new version.

Each record should know how to update ElasticSearch with its data.

Create page that displays a table of the information, sortable by each column header. This table should only display the most recent version of each record.

All data for the table should be pulled directly from ElasticSearch.
The table should be paginated to twenty rows per page.

Create another page with basic authentication.
This page should allow the user to set what columns display in the table based on the fields available in ElasticSearch.


All times in the csv are in UTC, they should display in Mountain Time and the format:

December 2, 1986
