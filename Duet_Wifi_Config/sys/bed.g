; bed.g
; called to perform automatic bed compensation via G32
;
G29 S2                        ; disable mesh compensation
M561                          ; clear any bed transform
G28                           ; home
G30 P0 X10 Y137 Z-99999       ; probe near a leadscrew
G30 P1 X10 Y487 Z-99999       ; probe near a leadscrew
G30 P2 X550 Y312 Z-99999      ; probe near a leadscrew
G30 P3 X300 Y10 Z-99999       ; probe near front of bed
G30 P4 X300 Y580 Z-99999      ; probe near front of bed
G30 P5 X300 Y300 Z-99999 S3   ; probe near middle of bed and calibrate 3 motors
M561
G28Z

