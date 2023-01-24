set terminal pdf font "Times New Roman,10"
set output "cs20b029_lab3plot.pdf"
set title "Bernoulli Random Variable Simulation"
set xlabel "Time"
set ylabel "Sample Value"
set yrange [0:1.3]
set xrange [0:100]
set style data linespoints
set key left top
set label "Theoretical" at graph 0.45, graph 0.5
set label "Simulation" at graph 0.45, graph 0.84
set arrow from graph 0, 0.46 to graph 1, 0.46 nohead lt 2 lc rgb 'black'

plot "cs20b029_lab3_output.txt" with linespoints
