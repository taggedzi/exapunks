NOTE 506,16,2

LINK 800
GRAB 200
COPY F X
WIPE
LINK 800
MAKE
COPY X F
MARK TEST
TEST X = 0
TJMP DONE
SUBI X 1 X
COPY X F
JUMP TEST
MARK DONE
DROP
HALT
