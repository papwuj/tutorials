# Cognos - Report Functions
There are various Report functions that can be used in a Cognos report.

Some of these different report functions include −

## _days_between
This function is used to return a positive or a negative number representing the number of days between the two datetime expressions. If a timestamp_exp1 &lt; timestamp_exp2 then the result will be a –ve number.

### How to use
```
_days_between(timestamp_exp1, timestamp_exp2)
```
## _days_to_end_of_month
This function is used to return a number representing the number of days remaining in the month represented by the datetime expression timestamp_exp.

### How to use
```
_days_to_end_of_month(timestamp_exp)
```
## _first_of_month
This function is used to return a datetime that is the first day of the month represented by timestamp_exp.

## _add_days
This function is used to return the datetime resulting from adding integer_exp days to timestamp_exp.

### How to use
```
_add_days(timestamp_exp, integer_exp)
```
## _add_months
This function is used to return the datetime resulting from adding integer_exp months to timestamp_exp.

### How to use
```
_add_months(timestamp_exp, integer_exp)
```
## _add_years
This function is used to return the datetime resulting from adding integer_exp years to timestamp_exp.

### How to use
```
_add_years(timestamp_exp, integer_exp)
```
## _age
This function is used to return a number that is obtained from subtracting timestamp_exp from today's date in YYYYMMDD format (years, months, days).

### How to use
```
_age(timestamp_exp)
```
## _day_of_week
This function is used to return the day of week (between 1 and 7), where 1 is the first day of the week as indicated by integer_exp (between 1 and 7, 1 being Monday and 7 being Sunday). Note that in ISO 8601 standard, a week begins with Monday being day 1. In North America where Sunday is the first day of the week being day 7.

### How to use
```
_day_of_week(timestamp_exp, integer_exp)
```
## _day_of_year
This function is used to return the ordinal for the day of the year in date_ exp (1 to 366). Also known as the Julian day.

### How to use
```
_day_of_year(timestamp_exp)
```
Like these, there are various other Report functions as well that can be used.


[Previous Page](../cognos/cognos_creating_a_chart.md) [Next Page](../cognos/cognos_report_validation.md) 
