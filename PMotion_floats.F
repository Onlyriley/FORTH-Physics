FVARIABLE g \ Declare the float of gravity
9.81e g F!

FVARIABLE PI \ Declare PI
3.1415926535e PI F!

FVARIABLE max_height_arr 10 cells allot \ Allocate space for the last 10 max height calculations
variable max_height_index
0 max_height_index !

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

: get_PI ( -- )
    PI F@
;

\ Projectile Motion Calculations (requires radians, not degrees)
: velo_x ( -- vx )
    get_velo get_angle Fcos F* \ vx = velocity * cos(angle)
    ;

: velo_y ( -- vy )
    get_velo get_angle Fsin F* \ vy = velocity * sin(angle)
    ;

: max_height ( -- )
    get_angle FSIN
    get_velo F*
    FDUP F*
    2e get_gravity F*
    F/
;

: time_of_flight ( -- t )
    2e get_velo F*
    get_angle FSIN
    F*
    get_gravity F/
    ;

: range ( -- r )
    get_velo get_velo F*
    2e get_angle F*
    FSIN
    F*
    get_gravity F/
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

: x_at_t ( t -- )
    velo_x F*
;

: y_at_t ( t -- )
    FDUP FDUP F* \ T^2
    4.9e F* \ 4.9 * T^2
    FSWAP \ Get T on top
    velo_y \ Initial y on stack
    F* \ Initial y time time
    FSWAP F-
    get_height F+
;

: recursive_pos ( timeStart -- )
    fdup
    y_at_t 0e f< 
    if 
    fdrop
    else
    fdup fdup
    x_at_t F.
    y_at_t F.
    1e f+ recurse then
;