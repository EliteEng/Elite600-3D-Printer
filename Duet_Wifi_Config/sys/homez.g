; homez.g
; called to home the Z axis
;

M400                          ; make sure everything has stopped before we make changes
G91                           ; relative mode
G1 S2 Z5 F200                 ; raise head 4mm to ensure it is above the Z probe trigger height
G90                           ; back to absolute mode
G1 X300 Y300 F2000            ; put head over the centre of the bed, or wherever you want to probe
G30                           ; lower head, stop when probe triggered and set Z to trigger height
M400			                    ; make sure everything has stopped before we reset the motor currents

M98 P/sys/motor-z-setup.g     ; Set up Z Motor
