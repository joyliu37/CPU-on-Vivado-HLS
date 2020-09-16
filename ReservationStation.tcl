set libdir [lindex $argv 2]
open_project -reset reservation_station
set_top test_ReservationStation
add_files -cflags "-I $libdir -std=c++11" $libdir/ReservationStation.test.cpp
add_files -cflags "-I $libdir -std=c++11" $libdir/ReservationStation.cpp
open_solution -reset "solution1"
#set_part {xc7k160tfbg484-2}
set_part {xc7z020clg484-1}
list_core
create_clock -period 5
csynth_design
export_design -rtl verilog -format ip_catalog
exit
