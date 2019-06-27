; homey.g
; called to home the Y axis
;

M400                          ; make sure everything has stopped before we make changes
;G1 Z1 F6000		              ; Lift Z
M913 X35 Y35                  ; drop motor currents to 35%
M915 X Y F0 S5 R0 H400	      ; set sensitivity to 5 unfiltered
M201 X250.00 Y250.00          ; Set accelerations (mm/s^2)
M566 X120.00 Y120.00          ; Set maximum instantaneous speed changes (mm/min)
G91			                      ; use relative positioning
G1 S1 Y-900 F6000	            ; move Y all the way left and stop at end
G1 Y1 F4000                   ; move to edge of glass
G92 Y0			                  ; set Y0 at edge of glass
G90			                      ; back to absolute positioning
M400			                    ; make sure everything has stopped before we reset the motor currents

M98 P/sys/motor-xy-setup.g    ; Set up X&Y Motors

