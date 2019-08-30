# D3.js - Delimiter-Separated Values API
A delimiter is a sequence of one or more characters used to specify the boundary between separate, independent regions in plain text or other data. A field delimiter is a sequence of comma-separated values. Well, delimiter-separated values are **comma separated values** (CSV) or **tab-separated values** (TSV). This chapter explains the delimiter separated values in detail.

## Configuring API
We can easily load the API using the following syntax.

```
<script src = "https://d3js.org/d3-dsv.v1.min.js"></script>
<script>
   var data = d3.csvParse(string);
</script>
```
## API methods
Following are the various API methods of the delimiter-separated values.

   * d3.csvParse(string[, row])
   * d3.csvParseRows(string[, row])
   * d3.csvFormat(rows[, columns])
   * d3.csvFormatRows(rows)
   * d3.tsvParse(string[, row])
   * d3.tsvParseRows(string[, row])
   * d3.tsvFormat(rows[, columns])
   * d3.tsvFormatRows(rows)

Let us go through each of these API methods in detail.

### d3.csvParse(string[, row])
This method is used to parse the csv format. Consider the file **data.csv** that is shown below.

```
year,population
2006,40
2008,45
2010,48
2012,51
2014,53
2016,57
2017,62
```
Now, we can apply the above-given function.

**Example** − Let us consider the following example.

```
var data = d3.csvParse(string, function(d) {
   return {
      year: new Date(+d.Year, 0, 1), // lowercase and convert "Year" to Date
      population: d.population
   };
});
```
Here, it Parses the specified string in the delimiter-separated values. It returns an array of objects representing the parsed rows.

### d3.csvParseRows(string[, row])
This method is used to parse the csv format equivalent to rows.

```
var data = d3.csvParseRows(string, function(d, i) {
   return {
      year: new Date(+d[0], 0, 1), // convert first colum column to Date
      population: d[1],
   };
});
```
It parses each row in the csv file.

### d3.csvFormat(rows[, columns])
This method is used to format the csv rows and columns.

**Example** − Let us consider the following example.

```
var string = d3.csvFormat(data, ["year", "population"]);
```
Here, if the columns are not specified, the list of the column names that forms the header row is determined by the union of all properties on all the objects in the rows. If columns are specified, it is an array of strings representing the column names.

### d3.csvFormatRows(rows)
This method is used to format the csv rows.

**Example** − Let us consider the following example.

```
var string = d3.csvFormatRows(data.map(function(d, i) {
   return [
      d.year.getFullYear(), // Assuming d.year is a Date object.
      d.population
   ];
}));
```
Here, it formats the specified array of string rows as delimiter-separated values, returning a string.

### d3.tsvParse(string[, row])
This method is used to parse the tsv format. It is similar to csvParse.

### d3.tsvParseRows(string[, row])
This method is used to parse the tsv format equivalent to rows. It is similar to csvParseRows function.

### d3.tsvFormat(rows[, columns])
This method is used to format the tsv rows and columns.

### d3.tsvFormatRows(rows)
This method is used to format the tsv rows.


[Previous Page](../d3js/d3js_requests_api.md) [Next Page](../d3js/d3js_timer_api.md) 
