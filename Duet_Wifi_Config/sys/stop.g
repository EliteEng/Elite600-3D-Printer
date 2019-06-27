; stop.g
; called when M0 (Stop) is run (e.g. when a print from SD card is cancelled)
;

M104 S0             ; Extruder temp 0, don't wait
M140 S0             ; Bed temp 0, don't wait.
G1 X5 Y5 E-3 F6000  ; Home, to get the head out of the way;
M84 E0              ; De-energize Extruder motors
M84 XY              ; De-energize Gantry motors
M106 P0 S0          ;Turn off Main Board cooling fan

;Play Noise
M300 S400 P1000        ; Beep to notify print has been stopped
M300 S1000 P1000
M300 S1200 P1000
M300 S600 P1000
