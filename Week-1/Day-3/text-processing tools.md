# Text-Processing Tools
1. grep - Search for patterns (find errors in logs)
2. tail - View end of files (see latest log entries)
3. head - View beginning of files (see first log entries)
4. awk - Process columns and fields (extract specific data)
5. sed - Find and replace text (modify log formats)

## grep: 
- Purpose: grep is used to search for specific patterns within files. It is particularly useful for finding errors in logs or any other text files.
- Usage: The basic syntax is:
grep [options] pattern [file...]


## tail
Purpose: tail is used to display the last part of files. It is useful for viewing the latest log entries.
- Usage: The basic syntax is:
tail [options] [file...]


## head:
Purpose: head is used to display the beginning part of files. It is useful for quickly checking the first few lines of a log or data file.
- Usage: The basic syntax is:
head [options] [file...]



## awk:
Purpose: awk is a powerful programming language used for pattern scanning and processing. It is particularly effective in processing columns and fields in text files.
- Usage: The basic syntax is:
awk 'pattern { action }' [file...]


## sed
Purpose: sed is a stream editor that can perform basic text transformations on an input stream (a file or input from a pipeline).
The basic syntax is:
sed [options] 'command' [file...]


## grep - Pattern Search
1. Find all errors in a log
- grep "ERROR" Week-1/Day-3/day3-error-summary.txt
2. Count occurrences
- grep -c "ERROR" Week-1/Day-3/day3-error-summary.txt
3. Show line numbers
- grep -n "ERROR" Week-1/Day-3/day3-error-summary.txt
4. Invert match (show lines WITHOUT pattern)

## tail - View End of Files
1. Last 10 lines (default)
- tail Week-1/Day-3/day3-error-summary.txt 
2. Last 50 lines
- tail -n 50 Week-1/Day-3/day3-error-summary.txt

## head - View Beginning of Files
1. First 10 lines (default)
- head  Week-1/Day-3/day3-error-summary.txt
2. First 20 lines
- head -n 20  Week-1/Day-3/day3-error-summary.txt 

## awk - Column Processing
1. Extract ERROR lines (exact match)
- awk '$3=="ERROR" {print}' Week-1/Day-3/day3-error-summary.txt
2. Case-insensitive match for level
-  awk 'toupper($3)=="ERROR" {print}' Week-1/Day-3/day3-error-summary.txt
3. Count occurrences
- awk '/ERROR/ {count++} END {print count}' Week-1/Day-3/day3-error-summary.txt
4. Count total ERRORs
- awk '$3=="ERROR" {c++} END {print c+0}' Week-1/Day-3/day3-error-summary.txt
5. Print lines where column 3 contains "ERROR"
- awk '$3 ~ /ERROR/ {print}' Week-1/Day-3/day3-error-summary.txt

## sed - Stream Editor (Find & Replace)
1. Replace first occurrence in each line
- sed 's/ERROR/CRITICAL/' Week-1/Day-3/day3-error-summary.txt   
