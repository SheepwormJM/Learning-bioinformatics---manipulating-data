**cut**

Use to cut out columns from a file
```
cut -f 2-5,8 -d , values.csv
```
-f is for the columns ("fields")
-d is for the delimiter between the columns
*Note that cut doesn't understand quoted strings. i.e. "milk,cow",13,22 would be separated into 4 columns with -d , not 3. *

**paste** 
Use to combine two files side by side. Take care the output makes sense!

