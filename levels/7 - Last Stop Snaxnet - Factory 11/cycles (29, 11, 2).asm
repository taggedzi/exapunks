NOTE 29, 11, 2
NOTE Remove PEANUTS from Peanut Blast recipe.

; XA
LINK 800
LINK 800
COPY M X
GRAB 237
MARK FIND_NUTS
TEST F = X
FJMP FIND_NUTS
SEEK -1
VOID F

; XB
GRAB 300
COPY F M