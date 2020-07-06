# To replace text with new text

sed 's/a/b/g' test > test2  # Replaces every a in test with b and outputs to file test2 


sed 's/\.//g' test > test2  # For a metacharacter (.) to be treated literally then use a backslash before it (\)
