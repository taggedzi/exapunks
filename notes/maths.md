# Various and useful maths to get things done.

## Clamping Numbers

Lets say we have a number in M that has to be between -75 and 90 that we want to output to F.

The slow way:

```
COPY M X

MARK TEST_MIN
  TEST X < -75
  TJMP INC
  JUMP TEST_MAX

MARK INC
  COPY -75 X
  JUMP WRITE

MARK TEST_MAX
  TEST X > 90
  TJMP DEC
  JUMP WRITE

MARK DEC
  COPY 50 X
  JUMP WRITE

MARK WRITE
  COPY X F
```

The faster way:

```
NOTE MAX CHECK
ADDI M 9909 X
SUBI X 9909 X

NOTE MIN CHECK
SUBI X 9924 X
ADDI X 9924 F
```

I know that seems odd but it is exploiting the fact that numbers in the game have a max value of 9999 and a min value of -9999.  No matter how much you add or subtract it will never go above or below those bounds.  

if M = 98 here is what happens:
```
NOTE TESTING the MAX Bounds
ADDI 98 9909 X ;X = 9999
SUBI X 9909 X  ;X = 90
```
if M = 5 
```
NOTE TESTING the MAX Bounds
ADDI 5 9909 X ;X = 9914
SUBI X 9909 X ;X = 5
```

The number you add or subtract depens on your bounds.  To test for MAX subtract your boundary from 9999 and that is the number you use.  To test for MIN subtract your lower bounary from -9999 (this should make the number SMALLER), and that is your number.

## Calculating rows and colums with a single register

Ok, so this was inspired by the Highway sign mission. It took me a long time to figure this one out. You can use DIVI and MODI to calculate and arbitrary sized grid (Rows/Cols) using a single numeric register.  

```
COPY 0 X
MARK LOOP
    DIVI X 9 #DATA ;COL
    MODI X 9 #DATA ;ROW
    COPY F #DATA ;CHARACTER
    JUMP LOOP
```

You can replace `9` with the number of COLUMNS in your grid for both the DIVI and MODI calculation.  When X gets to any multiple of 9 it will increment the columns. When X not an exact multiple of 9 MODI will give you your row count.  Now in this exaple I do not break out of the loop intentionally, you could theoretically come up with your own exit criteria.

MODI = the remainder left over when you divide X by 9. (Don't try with Negative numbers unless you know what you are doing, it gets wierd.)
DIVI = the whole number division of X divided by 9. 

So when X = 0
```
DIVI 0 9 ;COL = 0
MODI 0 9 ;ROW = 0
```

When X = 1
```
DIVI 1 9 ;COL = 0 
MODI 1 9 ;ROW = 1
```
...

When X = 11
```
DIVI 11 9 ;COL = 1 
MODI 11 9 ;ROW = 2 
```

When X = 12
```
DIVI 12 9 ;COL = 1 
MODI 12 9 ;ROW = 3 
```