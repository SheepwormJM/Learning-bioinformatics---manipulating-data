# See here for a list of examples of how to use awk - very helpful! https://www.golinuxcloud.com/awk-examples-with-command-tutorial-unix-linux/


# How to sum a set of numbers in a column ($3), after selecting a subset into a new file (based on value in $1):

awk '$1 == 2' poolseq_tc_171026.renamed.tc_171026.renamed.spectra-cn.hist > 2copy_kmers_RnG
awk '{sum += $3} END {print sum}' 2copy_kmers_RnG > sum2copy_kmers_RnG

awk '$1 == 3' poolseq_tc_171026.renamed.tc_171026.renamed.spectra-cn.hist > 3copy_kmers_RnG
awk '{sum += $3} END {print sum}' 3copy_kmers_RnG > sum3copy_kmers_RnG
