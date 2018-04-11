#! /usr/bin/gnuplot -persist

set term pngcairo size 1200,900 font "Times,26" 
set output "./plot1.png" 

set xlabel "t, c"
set ylabel "y, м"
set title "Движение точки"
set xrange [0:2]

plot sin(3*x) t 'Перемещение'


set term pngcairo size 1200,900 font "Times,26" linewidth 2
set output "./plot2.png" 

plot x**2 t 'Перемещение', 2*x t '2x^2' 


set terminal svg size 1200,900 font 'Times,26' linewidth 2 

set output 'plot3.svg'

plot x**2 t 'Перемещение', 2*x t 'Скорость' 



#
# Функции
#
reset

set term pngcairo size 1200,800 font "Times,26" \
    linewidth 2

set xrange [-5:5]
set yrange [-1.5:1.5]
set xlabel 'x'
set ylabel 'f'

set output 'functions1.png'

plot sin(x) with linespoints,\
	 cos(x) with linespoints


reset

set term pngcairo size 1200,800 font "Times,26" \
    linewidth 2

set xrange [-5:5]
set yrange [-1.5:1.5]
set xlabel 'x'
set ylabel 'f'

set output 'functions2.png'

plot sin(x) with lines,\
	 cos(x) with lines

reset

set term pngcairo size 1200,800 font "Times,26" \
    linewidth 2

set key top left

set xrange [-5:5]
set yrange [-1.5:1.5]
set xlabel 'x'
set ylabel 'f'

set output 'functions3.png'

plot sin(x) t 'Синус'   with lines,\
	 cos(x) t 'Косинус' with lines

#
# Стили
# 
reset

set term pngcairo size 1200,800 font "Times,26" linewidth 2

set output 'line_style.png'

set xrange [-5:5]
set yrange [-1.5:1.5]
set xlabel 'x'
set ylabel 'f'

plot sin(x) with lines, \
 	 cos(x) with points, \
 	 0.5*x  with linespoints



#
# Тип линии
# 
reset

set term pngcairo size 1200,800 font "Times,26" linewidth 3

set output 'line_style_line.png'

set xrange [-5:5]
set yrange [-1.5:1.5]
set xlabel 'x'
set ylabel 'f'

plot sin(x) with lines, \
 	 cos(x) with lines dt '-', \
 	 0.5*x  with lines dt '_'




#
# График по файлу ПЛАНЕТЫ
# 
reset

set term pngcairo size 1200,800 font "Times,26" linewidth 2

set output '04-2018.png'
set xrange [1:31]

set xlabel 'День'
set ylabel 'Температура. ^oС'
set title 'Температура в марте 2018 года в г. Самара'

set key bottom right

plot './temperature.txt' using 1:2 t 'мин'  with linespoints ps 2, \
     './temperature.txt' using 1:3 t 'сред' with linespoints ps 2, \
     './temperature.txt' using 1:4 t 'макс' with linespoints ps 2


#
# Заливка
# 
reset

set term pngcairo size 1200,800 font "Times,26" linewidth 2

set output '04-2018-filled.png'
set xrange [1:31]

set xlabel 'День'
set ylabel 'Температура. ^oС'
set title 'Температура в марте 2018 года в г. Самара'

set key bottom right

set style fill transparent solid 0.25

set grid 

plot './temperature.txt' using 1:3:2 t ''  with filledc lc rgb 'blue', \
	 './temperature.txt' using 1:3:4 t ''  with filledc lc rgb 'red', \
	 './temperature.txt' using 1:3   t 'среднее'  with lines lc rgb '#2222CC'
     


#
# График по файлу ПЛАНЕТЫ
# 
reset

set term pngcairo size 1200,700 font "Times,24" linewidth 3

set output 'planets.png'
set xrange [*:*]
plot './planets.txt' using 3:xticlabels(1) \
	 title '' with linespoints


set term pngcairo size 1200,700 font "Times,24" linewidth 3

set logscale y

set output 'planets_log.png'
set xrange [*:*]
plot './planets.txt' using 3:xticlabels(1) \
     title '' with linespoints ps 2 pt 7


#
# График по файлу ПЛАНЕТЫ
# 
set term pngcairo size 1200,800 font "Times,22" linewidth 2

set datafile separator ','

set output 'motion.png'
set xrange [*:*]
plot './motion.csv' using 1:2 title '' with lines





#
# Маркеры
# 

reset

set term pngcairo size 1200,800 font "Times,26" \
    linewidth 2

set datafile separator ','
set output 'default_data.png'

plot 'motion.csv' u 1:2 t '{/Symbol f}' ,\
	 'motion.csv' u 1:3 t 'x' ,\
     'motion.csv' u 1:4 t '{/Symbol w}'

#
# Вычисляемые колонки
# 

reset

set term pngcairo size 1200,800 font "Times,26" linewidth 2

set datafile separator ','
set output 'expression.png'
set xlabel 't, c'
set ylabel 'Угол поворота, градус'

plot 'motion.csv' u 1:($2*180/pi) t '' with linespoints pt 4


#
# Маркеры
# 

reset

set term pngcairo size 1200,800 font "Times,26" \
    linewidth 2

set datafile separator ','
set output 'markers.png'

plot 'motion.csv' u 1:2 t '{/Symbol f}' with linespoints pt 4 ,\
	 'motion.csv' u 1:3 t 'x' with linespoints pt 6 ,\
     'motion.csv' u 1:4 t '{/Symbol w}' with linespoints pt 10




#
# Блоки данных
#

reset

set term pngcairo size 1200,800 font "Times,26" linewidth 3
set output 'blocks.png'

plot 'blocks.txt' index 0 u 1:2 t 'B1' with linespoints pt 4 ,\
	 'blocks.txt' index 1 u 1:2 t 'B2' with linespoints pt 6
     


#
# СТИЛИ ЛИНИЙ
# 

reset

set term pngcairo size 1200,800 font "Times,26" linewidth 2

set style line 1 lw 2 lc rgb 'red'   pt 0 
set style line 2 lw 2 lc rgb 'green' pt 4  ps 2
set style line 3 lw 2 lc rgb 'blue'  pt 10 ps 2 pointinterval 4    

set output 'custom_lines_style.png'

set xrange [-5:5]
set yrange [-1.5:1.5]
set xlabel 'x'
set ylabel 'f'

plot sin(x) t '{/Symbol f}' with lines ls 1 ,\
     cos(x) t 'x'           with linespoints ls 2 ,\
     0.5*x  t '{/Symbol w}' with linespoints ls 3



#
# Монохромные
#
reset

set term pngcairo size 1200,800 font "Times,26" linewidth 2

set style line 1 lw 2 lc -1 pt 1 
set style line 2 lw 2 lc -1 pt 2 dt (10,4)
set style line 3 lw 2 lc -1 pt 3 dt (10,4,4,4)

set output 'custom_lines_style_dashed.png'

set xrange [-5:5]
set yrange [-1.5:1.5]
set xlabel 'x'
set ylabel 'f'

plot sin(x) t '{/Symbol f}' with lines ls 1 ,\
     cos(x) t 'x'           with lines ls 2 ,\
     0.5*x  t '{/Symbol w}' with lines ls 3



#
# Несколько графиков
#
reset

set term pngcairo size 1200,800 font "Times,18" linewidth 2
set output 'multiplot1.png'
set multiplot layout 2,2

set xrange [-5:5]
set yrange [-1.5:1.5]
set grid 
set xlabel 'x'
set title 'Синус'
set ylabel 'sin(x)'
plot sin(x) t '' with lines lt -1
set title 'Косинус'
set ylabel 'cos(x)'
plot cos(x) t '' with lines ls 1 
set title 'Тангенс'
set ylabel 'tan(x)'
plot tan(x) t '' with lines ls 2 
set title 'Кубическая парабола'
set ylabel 'x^3'
plot x**3   t '' with lines dt '_' 



#
# Вторая ось 
#
reset
unset multiplot

set term pngcairo size 1200,800 font "Times,24" linewidth 2

set xrange [0:1]
set ytics nomirror
set y2tics
set ylabel "Скорость шарика, м/c"
set y2label "Угол, градус, угловая скорость, градус/с"

set grid 

set key top left reverse Left

set datafile separator ','
set output 'secondary.png'

plot 'motion.csv' u 1:($2*180/pi) t '{/Symbol f}' axes x1y2 with lines lw 2,\
	 'motion.csv' u 1:($3*180/pi) t '{/Symbol w}' axes x1y2 with lines lw 2,\
     'motion.csv' u 1:($5) t 'V' axes x1y1 with lines lw 2

