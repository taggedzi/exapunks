NOTE 34,21,1

; XA
GRAB 300
MARK READ
COPY F M
TEST EOF
FJMP READ
COPY -1 M
HALT

; XB
LINK 800
GRAB 200
SEEK 9999
MARK READ
COPY M X
TEST X = -1
FJMP WRITE
TJMP CLOSE

MARK WRITE
COPY X F
JUMP READ

MARK CLOSE
DROP
HALT