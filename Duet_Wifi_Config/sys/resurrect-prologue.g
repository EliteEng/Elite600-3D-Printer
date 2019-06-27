;sys/resurrect-prologue.g
;extra steps to recover from power loss

G28 X Y                 ; home X and Y, hope that Z hasn't moved
M116                    ; wait for temperatures
M83                     ; relative extrusion
G1 E5 F1200             ; undo the retraction that was done in the M911 power fail script

