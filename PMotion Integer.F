\ Functions will remove the values they use

\ Basic equations
: get_velo ( deltaDistance deltaTime -- velocity )
    /
    ;

: get_acc ( deltaVelocity deltaAcceleration -- acceleration )
    /
    ;

: get_force ( mass acceleration -- force ) * ;

\ Kinematic equations
: get_velo_at_time ( initialVelocity acceleration time -- v )
    *
    +
    ;

: get_distance_at_time ( s0 v0 t a -- s )
    variable a
    . a !
    variable t
    . t !
    variable v0
    . v0 !
    variable s0
    . s0 !