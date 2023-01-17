set terminal pdf font "Times New Roman,10"
set output "cs20b029_lab3plot.pdf"
set title "Bernoulli Random Variable Simulation"
set xlabel "Time"
set ylabel "Sample Value"
set yrange [0:1.5]
set xrange [0:100]
set style data linespoints
set grid
set key left top
set label "Theoretical" at graph 0.45, graph 0.42
set arrow from graph 0.2, graph 0.95 to graph 0.15, graph 0.95 nohead lc rgb 'black'
set label "Simulation" at graph 0.45, graph 0.8
set arrow from graph 0.12, graph 0.9 to graph 0.15, graph 0.9 nohead lc rgb 'blue'
set arrow from graph 0, 0.4 to graph 1, 0.4 nohead lt 2 lc rgb 'black'

plot "cs20b029_lab3_output.txt" using 1:2 with linespoints
