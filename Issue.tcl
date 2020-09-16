set libdir [lindex $argv 2]
open_project -reset issue
set_top test_Issue
add_files -cflags "-I $libdir -std=c++11" $libdir/Issue.test.cpp
add_files -cflags "-I $libdir -std=c++11" $libdir/Issue.cpp
add_files -cflags "-I $libdir -std=c++11" $libdir/FunctionalUnit.cpp
add_files -cflags "-I $libdir -std=c++11" $libdir/CommonDataBus.cpp
add_files -cflags "-I $libdir -std=c++11" $libdir/ReorderBuffer.cpp
add_files -cflags "-I $libdir -std=c++11" $libdir/ReservationStation.cpp
add_files -cflags "-I $libdir -std=c++11" $libdir/RegisterFile.cpp
open_solution -reset "solution1"
#set_part {xc7k160tfbg484-2}
set_part {xc7z020clg484-1}
list_core
create_clock -period 5
csynth_design
export_design -rtl verilog -format ip_catalog
exit
