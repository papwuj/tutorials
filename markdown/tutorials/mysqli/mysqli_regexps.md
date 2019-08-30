# MySQLi - Regexps
You have seen MySQLi pattern matching with **LIKE ...%**. MySQLi supports another type of pattern matching operation based on regular expressions and the **REGEXP** operator. If you are aware of PHP or PERL, then it's very simple for you to understand because this matching is very similar to those scripting regular expressions.

Following is the table of pattern, which can be used along with **REGEXP** operator.

## Examples
Now based on above table, you can device various type of SQL queries to meet your requirements. Here, I'm listing few for your understanding. Consider we have a table called tutorials_inf and it's having a field called name −

Query to find all the names starting with 'sa'

```
mysql>  SELECT * FROM tutorials_inf WHERE name REGEXP '^sa';
```
The sample output should be like this −

```
+----+------+
| id | name |
+----+------+
|  1 | sai  |
+----+------+
1 row in set (0.00 sec)
```
Query to find all the names ending with 'ai'

```
mysql> SELECT * FROM tutorials_inf WHERE name REGEXP 'ai$';
```
The sample output should be like this −

```
+----+------+
| id | name |
+----+------+
|  1 | sai  |
+----+------+
1 row in set (0.00 sec)
```
Query to find all the names, which contain 'a'

```
mysql> SELECT * FROM tutorials_inf WHERE name REGEXP 'a';
```
The sample output should be like this −

```
+----+-------+
| id | name  |
+----+-------+
|  1 | sai   |
|  3 | ram   |
|  4 | johar |
+----+-------+
3 rows in set (0.00 sec)
```
Query to find all the names starting with a vowel

```
mysql>  SELECT * FROM tutorials_inf WHERE name REGEXP '^[aeiou]';
```

[Previous Page](../mysqli/mysqli_handling_null_values.md) [Next Page](../mysqli/mysqli_transactions.md) 
