# How to make various loops

Note: Taken from the Zine, personal experience, and [Code Patterns for Exapunks](https://journal.3960.org/posts/2018-08-18-code-patterns-for-exapunks/).

## While Loops

```
COPY 10 X
MARK WHILE
  NOTE DO STUFF
  SUBI X 1 X
  TJMP WHILE
```

## To loop or not to loop

It can be more efficent at times to just write out the instructions you want to execute rather than loop here is an example

```
MARK LOOP
  COPY X F
  ADDI X 1 X
  TEST X > 2
  FJMP LOOP
```

To do the same thing with less cycles and code just write out your instructions.

```
COPY 0 F
COPY 1 F
COPY 2 F
```

## Reading files

This reads an entire file into M.

```
GRAB 199
MARK READING
  COPY F M
  TEST EOF
  FJMP READING
```

## Searching files

This searches through a file to find a specified entry. This assumes the value you are searching for is in the register X.

```
GRAB 200
MARK READING
  TEST F = X
  FJMP READING
NOTE When the loop exits the file pointer will be at the entry AFTER what you were searching for. 
COPY F X  
```

## Super Secret Technique - Spamming Bots

In some circumstances it can be more efficient to spam more bots to carry out instructions than to write a loop.

``` 
MARK READ
  COPY #NERV M
  JUMP READ
```

In ths case you can do this and it is significantly more efficient. In my test using the code below was 28 cycles faster for one batch.

```
MARK READ
  REPL READ
  COPY #NERV M
```