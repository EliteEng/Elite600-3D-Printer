;CORE XY Motor Settings

M566 X500.00 Y500.00          ; Set maximum instantaneous speed changes (mm/min)
M203 X12000.00 Y12000.00      ; Set maximum speeds (mm/min)
M201 X1200.00 Y1200.00        ; Set accelerations (mm/s^2)
M906 X1400.00 Y1400.00 I50    ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                       ; Set idle timeout

; Set Stall detection
M915 P0:1 S3 F1 R3 H200       ; X and Y Axis Stall Detection
