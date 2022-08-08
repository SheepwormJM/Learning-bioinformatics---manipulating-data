# To replace text with new text

sed 's/a/b/g' test > test2  # Replaces every a in test with b and outputs to file test2 


sed 's/\.//g' test > test2  # For a metacharacter (.) to be treated literally then use a backslash before it (\)


# You will also need to make Roz's file have just the gene name in it (.* means continue until I tell you to stop - in this case until the end of the line)
# Note that the space is important! Otherwise you still get a space after the gene name on the header line. 
sed 's/ gene=H.*//g' WBPS15gff3_pep.fasta > new_WBPS15gff3_pep.fasta
