; Trigger2 Macro File
; Filament Runout

M291 P"You have run out of filament" R"No Filament" T5 ; Display message

G1X300Y5F500; Move to Centre Pos

;Unload Filament
M109 S240 ; Heat up the current tool to 240C
M291 P"Retracting filament..." R"Unloading Filament" T5 ; Display message
G1 E-20 F300 ; Retract 20mm of filament at 300mm/min
G1 E-50 F3000 ; Retract 480mm of filament at 3000mm/min
M400 ; Wait for the moves to finish
M292 ; Hide the message again

;Cool down in case of no user present
M104 S0 ; Cool down the Extruder
;User interaction
M291 P"Please remove old filament and insert new filament" R"Loading Filament" S2 ; Display message

;Load Filament
M291 P"Please load new filament" R"Loading Filament" T5 ; Display message
M190 S240 ; Set current tool temperature to 240C
M291 P"Feeding filament..." R"Loading Filament" T5 ; Display new message
G1 E10 F600 ; Feed 10mm of filament at 600mm/min
G1 E470 F3000 ; Feed 470mm of filament at 3000mm/min
G1 E20 F300 ; Feed 20mm of filament at 300mm/min
G4 P1000 ; Wait one second
G1 E-2 F1800 ; Retract 10mm of filament at 1800mm/min
M400 ; Wait for moves to complete
M292 ; Hide the message

