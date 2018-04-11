
#
# Стили
# 
set term pngcairo size 1200,800 font "Times,26" linewidth 2

set output 'line_style.png'

set title ""
set xrange [0:2]

plot sin(x) with lines, cos(x) with points, 0.5*x with linespoints