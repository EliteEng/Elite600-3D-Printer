;Z Motor Settings

M566 Z0.1                     ; Set maximum instantaneous speed changes (mm/min)
M203 Z500.00                  ; Set maximum speeds (mm/min)
M201 Z1200.00                 ; Set accelerations (mm/s^2)
M906 Z1600.00 I90             ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                       ; Set idle timeout

; Set Stall detection
; M915 P5:6:7 S10 F1 R3 H200     ; Z Axis Stall Detection
