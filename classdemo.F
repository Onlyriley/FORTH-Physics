create Vector 2 cells allot
: Vector>init ( x y -- )
    Vector ! \
    Vector cell+ ! ;
: Vector>print ( -- )
    Vector @ .
    Vector cell+ @ . ;
5 4 Vector>init
6 6 Vector>init
Vector>print
Vector>print

