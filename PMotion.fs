FVARIABLE g \ Declare the float of gravity
9.81e g F!

FVARIABLE velocity
FVARIABLE angle
FVARIABLE height

\ Functions to set variables
: set_velo ( n -- )
    velocity F!
    ;

: set_angle ( n -- )
    angle F!
    ;

: set_height ( n -- )
    height F!
    ;


\ Functions will remove the values they use

\ Functions to GET the value of a variable and add to stack
\ Ex: 2.0e get_gravity F* F.
\ Rather than: 2.0e g F@ F* F.

: get_velo ( -- )
    velocity F@
    ;

: get_angle ( -- )
    angle F@
    ;

: get_height ( -- )
    height F@
    ;

: get_gravity ( -- )
    g F@
    ;



\ Basic equations to PRINT (also pops, values)
: print_velo ( -- )
    velocity F@
    velocity F.
    ;

: print_angle ( -- )
    angle F@
    angle F.
    ;

: print_height ( -- )
    height F@
    height F.
    ;

: print_gravity ( -- )
    g F@
    g F.
    ;

: print_acc ( deltaVelocity deltaAcceleration -- acceleration )
    /
    ;

: print_force ( mass acceleration -- force ) * ;

\ Kinematic equations
: print_velo_at_time ( initialVelocity acceleration time -- v )
    *
    +
    ;
