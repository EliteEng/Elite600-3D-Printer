; pause.g
; called when a print from SD card is paused

M83                     ; relative extruder moves
G1 E-5 F3600            ; retract 5mm of filament
G91                     ; relative positioning
G1 Z5 F360              ; lift Z by 5mm
G90                     ; absolute positioning
G1 X300 Y5 F6000        ; go to X=0 Y=0
T-1                     ; Turn Extruder off to allow it to cool down
M300 S500 P1000         ; Beep to notify print has been paused

