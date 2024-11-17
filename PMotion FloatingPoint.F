\ Functions will remove the values they use

\ Basic equations
: get_velo ( deltaDistance deltaTime -- velocity )
    f/
    ;

: get_acc ( deltaVelocity deltaAcceleration -- acceleration )
    f/
    ;

: get_force ( mass acceleration -- force ) f* ;

\ Kinematic equations
: get_velo_at_time ( initialVelocity acceleration time -- v )
    f*
    f+
    ;

: get_distance_at_time ( s0 v0 t a -- s )
    {: s0 v0 t a | f. f. f. f. :}
    s0 f@ f.
    
    ;