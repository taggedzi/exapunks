Command Quick Reference (AKA My Cheat Sheet)

Manipulation
COPY R/N R       Copy
SWIZ R/N R/N R   Swizzle (see Zine)

Maths:
ADDI R/N R/N R   Addition
SUBI R/N R/N R   Subtraction
MULI R/N R/N R   Multiplication
DIVI R/N R/N R   Division
MODI R/N R/N R   Modulo

Flow Control:
MARK L
JUMP L
TJMP L    - IF TRUTHY JUMP
FJMP L    - IF FALSE JUMP

Comparison:
TEST R/N = R/N 
TEST R/N > R/N
TEST R/N < R/N
TEST EOF

Life Cycle:
REPL L  Replicate and have replicant start at label L
HALT    Drop file and self terminate
KILL    Kill single Exa in same host (user owned first)

Navigation, Movement:
LINK R/N  Move using the link specified
HOST R    Copy host name to R

Communication
MODE       Switch between global and local mode messaging
VOID M     grab and delete current message
TEST MRD   test to see if there is a message waiting

Files:
MAKE
GRAB R/N    Open File
FILE R      Put file designation in R
SEEK R/N    Move the pointer +/-
VOID F      Delete the currently pointed entry
DROP        Close the File
WIPE        Delete the file
TEST EOF    Test for the EOF (end of file)

Misc:
NOTE
NOOP        No Operation - basically a wait
RAND R/N R/N R    Gen a random number 

Macros:
@REP N
; Repeat all code here N times
@END
@{N, M}   Create a number starting at N increasing by M each time it is repeated over in a @REP block
