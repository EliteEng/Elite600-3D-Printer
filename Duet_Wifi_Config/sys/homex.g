; homex.g
; called to home the X axis
;

M400                          ; make sure everything has stopped before we make changes
M913 X35 Y35                  ; drop motor currents to 35%
M915 X Y F0 S5 R0 H400	      ; set sensitivity to 5 unfiltered
M201 X250.00 Y250.00          ; Set accelerations (mm/s^2)
M566 X120.00 Y120.00          ; Set maximum instantaneous speed changes (mm/min)
G91			                      ; use relative positioning
G1 S1 X-900 F6000	            ; move X all the way left and stop at end
G1 X1 F5000                   ; move to edge of glass
G92 X0			                  ; set X0 at edge of glass
G90			                      ; back to absolute positioning
M400			                    ; make sure everything has stopped before we reset the motor currents

M98 P/sys/motor-xy-setup.g    ; Set up X&Y Motors

