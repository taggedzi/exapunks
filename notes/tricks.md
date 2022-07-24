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
