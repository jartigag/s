#!/usr/bin/gnuplot -persist

set xdata time
set timefmt "%Y-%m-%d"
set format x "%y-%m"
set xtics 60*60*24*30*5
#set yrange [1000:saldo_max]
set ytics 1000,5000,round_saldo_max
set datafile separator ","
#set label "+nom+bonus" at "2021-06-28",1 offset 0,11
#set label "+nom+finiq" at "2021-08-31",1 offset -1,13.1
set grid xtics mxtics ytics mytics
set mxtics 5
set mytics 5
set grid
plot "movs_ccs.csv" using 1:4 notitle with lines
