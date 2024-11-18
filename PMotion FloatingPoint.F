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