\ Loop Example
: squaresloop ( -- ) 12 0 do i dup * . loop ;
squaresloop

\ If statement
: is100 ( n -- n ) dup 100 = if 
. ." is 100 " else 
. ." is not 100 " then ;
40 is100
100 is100
0 is100

\ Factorial Recursion
: factorial ( n -- n! ) 
    dup 1 <= if drop 1
    else
    dup 1 - recurse * then ;
5 factorial .