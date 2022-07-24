# Tricks to help with cycles/size/activity?

## Cycles:

### Testing in Loops

TJMP and FJMP don't care if the test was performed by you or a TEST statement. You can use the register T to skip needing to test sometimes. This can be very helpful for making loops
```
; Loop 9 times
COPY 0 X
MARK LOOP
; DO SOMETHING HERE
ADDI X 1 X
TEST X = 9
TJMP LOOP
```
Could be written like this
```
; Loop 9 times
COPY -9 T
MARK LOOP
; Do something here
ADDI T 1 T
TJMP LOOP
```
This saves the cycle of having to TEST durring each itteration, while a small change, when you have to loop over something 1000 times it adds up fast. You can itterate UP or DOWN, just make sure to adjust your test condition to properly test for the one you are looking for.

### Using F like an R
You can reference a file pointer directly just as you would a R/N skipping the need to copy out of a file then manipulate.
```
COPY F X
ADDI X 1 X
```
Can be reduced to
```
ADDI F 1 X
```
You can even reference F multiple times in the same statement. Each time you call it the entry pointer in the file will advance though. For example if you wanted to read 2 entries from a file and output the result as the third entry in the file you could do this:
```
MULI F F F
```

### Using @REP
If you know you need to perform an action a certain number of times in advance you can use @REP to drastically reduce your cycles, at the cost of the size of your file.  Here is an example:
```
NOTE this code is used to count from 9 down to 0 and write to a file
COPY 9 X
MARK LOOP
TEST X = 9
TJMP DONE
SUBI X 1 X
COPY X F
JUMP LOOP
```
This COULD be expanded out to this to dramatically reduce the number of cycles because it is bypassing the TESTING
```
NOTE this code is used to count from 9 down to 0 and write to a file
COPY 9 X
@REP 9
SUBI X 1 X
COPY X F
@END
```
OR a slightly more advanced
```
NOTE this code is used to count from 9 down to 0 and write to a file
COPY 9 X
@REP 9
SUBI X @{1,1) F
@END
```
