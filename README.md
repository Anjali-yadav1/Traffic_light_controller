# Traffic_Light_Controller_Verilog
This project is a Verilog-based traffic light controller simulation. It controls traffic lights for multiple roads based on a predefined sequence and timing.

# Features

- Implements a finite state machine (FSM) for traffic light control.

- Controls four sets of traffic lights: light_M1, light_M2, light_MT, and light_S.

- Uses state transitions to switch lights based on predefined time durations.

- Reset functionality to initialize the system.

- Clock-based timing mechanism for state transitions.




# How to Run the Simulation Using Icarus Verilog (iverilog)

#Compile the Verilog files:
*iverilog -o trafficlight_tb.vvp trafficlight.v trafficlight_tb.v*

#Run the simulation:
*vvp trafficlight_tb.vvp*

#View the waveform (optional) using GTKWave:
*gtkwave*




# Project Workflow

- Reset is activated to initialize the system.

- Clock cycles drive the FSM, changing the traffic light states based on timers.

- Traffic lights transition through predefined states: Green, Yellow, and Red.

- Simulation verifies the correct behavior of the state transitions.
