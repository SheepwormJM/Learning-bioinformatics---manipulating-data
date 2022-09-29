See here for a list of examples of how to use awk - very helpful! https://www.golinuxcloud.com/awk-examples-with-command-tutorial-unix-linux/

See also here https://linuxhandbook.com/awk-command-tutorial/

Know Pre-defined and automatic variables in AWK
AWK supports a couple of pre-defined and automatic variables to help you write your programs. Among them you will often encounter:

RS –The record separator. AWK processes your data one record at a time. The record separator is the delimiter used to split the input data stream into records. By default, this is the newline character. So if you do not change it, a record is one line of the input file.

NR – The current input record number. If you are using the standard newline delimiter for your records, this match with the current input line number.

FS/OFS –The character(s) used as the field separator. Once AWK reads a record, it splits it into different fields based on the value of FS. When AWK print a record on the output, it will rejoin the fields, but this time, using the OFS separator instead of the FS separator. Usually, FS and OFS are the same, but this is not mandatory. “white space” is the default value for both of them.

NF – The number of fields in the current record. If you are using the standard “white space” delimiter for your fields, this will match with the number of words in the current record.

There are other more or less standard AWK variables available, so it worth checking your particular AWK implementation manual for more details. However, this subset is already enough to start writing interesting one-liners.

AWK programs are made of one or many ***pattern { action }*** statements.

The logical **AND** operator is ```&&```.

```||``` is the logical **OR**.

The entire set of columns is known as ```$0```.

# How to sum a set of numbers in a column ($3), after selecting a subset into a new file (based on value in $1):

```
awk '$1 == 2' poolseq_tc_171026.renamed.tc_171026.renamed.spectra-cn.hist > 2copy_kmers_RnG
awk '{sum += $3} END {print sum}' 2copy_kmers_RnG > sum2copy_kmers_RnG

awk '$1 == 3' poolseq_tc_171026.renamed.tc_171026.renamed.spectra-cn.hist > 3copy_kmers_RnG
awk '{sum += $3} END {print sum}' 3copy_kmers_RnG > sum3copy_kmers_RnG
```

# Remove a file header

```
awk 'NR>1' file > newfile
```

# Print only certain lines: 

```
awk 'NR>1 && NR<5' file > newfile    # This will print the 2nd, 3rd and 4th lines.
```

# Print only certain columns:
```
awk 'BEGIN { FS=OFS="," } NF { print $1, $3 }' file  # Specify the field separator (input) is the same as the output FS and both are to be a comma. Any record (line) which contains information (NF) is to be output. And only the 1st and 3rd columns are to be printed.
```
