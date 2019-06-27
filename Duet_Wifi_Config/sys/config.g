; Configuration file for Duet WiFi (firmware version 1.21)
; executed by the firmware on start-up

; General preferences
G90                                                ; Send absolute coordinates...
M83                                                ; ...but relative extruder moves

; Network
M550 P"Elite600"                                   ; Set machine name
;M551 P"Elite600"                                   ; Set password
M552 S1                                            ; Enable network
M586 P0 S1                                         ; Enable HTTP
M586 P1 S0                                         ; Disable FTP
M586 P2 S0                                         ; Disable Telnet

M667 S1                                            ; switch to CoreXY mode

; Drives
M569 P0 S0                                         ; Drive 0 goes forwards
M569 P1 S0                                         ; Drive 1 goes forwards
M569 P3 S1                                         ; Drive 3 goes forwards
M569 P5 S0                                         ; Drive 5 goes forwards
M569 P6 S0                                         ; Drive 6 goes forwards
M569 P7 S0                                         ; Drive 7 goes forwards
M584 X0 Y1 Z5:6:7                                  ; Three Z motors connected to driver outputs 5, 6 and 7
M350 X16 Y16 Z4 E16 I1                             ; Configure microstepping with interpolation
M92 X160.00 Y160.00 Z400.00 E268                   ; Set steps per mm

M98 P/sys/motor-xy-setup.g                         ; Set up X&Y Motors
M98 P/sys/motor-z-setup.g                          ; Set up Z Motors
M98 P/sys/motor-e-setup.g                          ; Set up E Motor

; Multiple Z Axis
M671 X-63:-63:682 Y487:137:312 S4                  ; leadscrews at rear left, front middle and rear right

; Axis Limits
M208 X0 Y0 Z-5 S1                                  ; Set axis minima
M208 X620 Y640 Z600 S0                             ; Set axis maxima

; Endstops
M574 X1 Y1 S3                                      ; Set endstops controlled by motor load detection

; Z-Probe
M558 P1 H6 F150 T6000 A3 B1 S0.07                  ; Set Z probe type to switch and the dive height + speeds
G31 P540 X-34 Y0 Z1.65                             ; Set Z probe trigger value, offset and trigger height
M557 X40:520 Y40:520 P5                            ; Define mesh grid
M376 H5                                            ; Taper errors off over 5mm

; Heaters
M307 H0 B0 A452.2 C814.7 D9.7 F1000 V23.9 S1.0     ; Disable bang-bang mode for the bed heater and set PWM limit
M305 P0 S"Bed" T100000 B9456 C0.00000098           ; Set thermistor + ADC parameters for heater 0
M143 H0 S120                                       ; Set temperature limit for heater 0 to 120C
M305 P1 S"Extruder" T100000 B4171 C0.0000001       ; Set thermistor + ADC parameters for heater 1
M307 H1 B0 A340.0 C140.0 D5.5 V23.9 S1.0
M143 H1 S350                                       ; Set temperature limit for heater 1 to 350C
M305 P100 S"Duet-MCU"
M305 P101 S"Duet-Drivers"
M305 P102 S"Duex-Drivers"

; Fans
M106 P1 S1 I0 F500 B2 L10 H1 T45                  ; Set fan 1 value, PWM signal inversion and frequency. Thermostatic control is turned on
M106 P7 T40 F30000 B10 L255 H100:101:102          ; Sets the Electronics fan 1 to come on with MCU temp or Driver Overtemp
M106 P8 T40 F30000 B10 L255 H100:101:102          ; Sets the Electronics fan 2 to come on with MCU temp or Driver Overtemp

; Tools
M563 P0 S"Extruder" D0 H1                          ; Define tool 0
G10 P0 X0 Y0 Z0                                    ; Set tool 0 axis offsets
G10 P0 R0 S0                                       ; Set initial tool 0 active and standby temperatures to 0C

; Automatic power saving
M911 S21 R23 P"M913 X35 Y35 Z0 M108 G1 X5 Y5 F6000" ; Set voltage thresholds and actions to run on power loss

; Custom settings

; configure filament sensor
M591 D0 P2 C3 S1                                   ; Enable Filament Sensor for E0

